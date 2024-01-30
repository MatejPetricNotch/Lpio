import 'dart:async';
import 'dart:convert';
import 'dart:io' show Platform;
import 'package:beacons_plugin/beacons_plugin.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lpio/features/account/data/account_repository.dart';
import 'package:lpio/features/account/domain/account.dart';
import 'package:lpio/features/beacons/beacon_details_screen.dart';
import 'package:lpio/features/beacons/data/beacons_repository.dart';
import 'package:lpio/features/beacons/domain/beacon_scanned.dart';
import 'package:lpio/features/beacons/domain/ble_client.dart';
import 'package:lpio/features/beacons/domain/ble_telemetry_data.dart';
import 'package:lpio/features/beacons/domain/ble_telemetry_dto.dart';
import 'package:lpio/features/beacons/settings_screen.dart';
import 'package:lpio/features/beacons/widgets/beacon_widget.dart';
import 'package:lpio/theme/my_colors/my_colors_palette.dart';
import 'package:collection/collection.dart';

class BeaconsScreen extends ConsumerStatefulWidget {
  const BeaconsScreen({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _BeaconsScreenState();
}

class _BeaconsScreenState extends ConsumerState<BeaconsScreen>
    with WidgetsBindingObserver {
  int foregroundInterval = 1;
  int backgroundInterval = 10;
  BleClient? selectedBleClient;
  late List<BleClient>? availableBleClients;
  int? selectedMajorNumber;
  late String? selectedUuid;
  bool sendingActive = false;
  late Account account;
  Timer? _timer;
  List<BeaconScanned>? scannedBeacons;

  final StreamController<String> beaconEventsController =
      StreamController<String>.broadcast();

  Future<void> _sendBeacons(
    BleClient bleClient,
    int interval,
  ) async {
    setState(() {
      sendingActive = true;
    });
    _timer = Timer.periodic(Duration(seconds: interval), (Timer timer) async {
      if ((scannedBeacons ?? []).isNotEmpty) {
        await ref.read(beaconsRepositoryProvider).sendTelemetry(
              bleTelemetryDto: BleTelemetryDto(
                ts: DateTime.now().toUtc().toIso8601String(),
                data: scannedBeacons!
                    .map((i) => BleTelemetryData(
                          uuid: i.uuid.toUpperCase(),
                          majNum: int.parse(i.major),
                          minNum: int.parse(i.minor),
                          tx: int.parse((i.txPower ?? '0')),
                          rssi: int.parse((i.rssi ?? '0')),
                        ))
                    .toList(),
              ),
              clientId: bleClient.id,
            );
      }
    });
  }

  void _stopSending() {
    if (_timer != null && _timer!.isActive) {
      _timer?.cancel();
      setState(() {
        sendingActive = false;
      });
    }
  }

  @override
  void initState() {
    WidgetsBinding.instance.addObserver(this);
    if (Platform.isIOS) {
      selectedUuid = 'b35e9cda-6059-4bd9-ad0a-0ce62714d21f';
    } else {
      selectedUuid = null;
    }
    initPlatformState();
    super.initState();
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) async {
    super.didChangeAppLifecycleState(state);
    if (AppLifecycleState.paused == state) {
      if (sendingActive) {
        _stopSending();
        _sendBeacons(selectedBleClient!, backgroundInterval);
      }
    }
    if (AppLifecycleState.resumed == state) {
      _stopSending();
      _sendBeacons(selectedBleClient!, foregroundInterval);
    }
  }

  @override
  void dispose() {
    BeaconsPlugin.stopMonitoring();
    beaconEventsController.close();
    _timer?.cancel();
    WidgetsBinding.instance.removeObserver(this);
    super.dispose();
  }

  Future<void> initPlatformState() async {
    if (Platform.isAndroid) {
      await BeaconsPlugin.setDisclosureDialogMessage(
          title: "Need Location Permission",
          message: "This app collects location data to work with beacons.");
    }
    await BeaconsPlugin.listenToBeacons(beaconEventsController);

    if (Platform.isAndroid) {
      BeaconsPlugin.channel.setMethodCallHandler((call) async {
        if (call.method == 'scannerReady') {
          await BeaconsPlugin.startMonitoring();
        }
      });
    } else if (Platform.isIOS) {
      await BeaconsPlugin.addRegion(
        'beacon',
        selectedUuid!,
      );
      await BeaconsPlugin.startMonitoring();
    }
    account = await ref.read(accountRepositoryProvider).getAccountData();
    availableBleClients =
        await ref.read(beaconsRepositoryProvider).getBleClients();
    selectedBleClient = (availableBleClients ?? [])
        .firstWhereOrNull((element) => element.user!.id == account.id);

    if (!mounted) return;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        elevation: 4,
        onPressed: showSettings,
        backgroundColor: myColorsPalette.primary,
        child: const Icon(
          Icons.settings,
          color: Colors.white,
        ),
      ),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 20.h, horizontal: 20.w),
          child: StreamBuilder(
            stream: beaconStream(),
            builder: (context, snapshot) {
              if (snapshot.connectionState == ConnectionState.waiting) {
                return Center(
                    child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CircularProgressIndicator(
                      color: myColorsPalette.textAction,
                    ),
                    const SizedBox(height: 20),
                    Text(
                      'Searching for beacons...',
                      style: GoogleFonts.getFont(
                        'Lato',
                        fontSize: 17.sp,
                        letterSpacing: -0.4,
                        fontWeight: FontWeight.w600,
                        color: myColorsPalette.textAction,
                        height: 1,
                      ),
                    )
                  ],
                ));
              } else if (snapshot.hasError) {
                return const Text('error');
              } else {
                List<BeaconScanned>? beacons = snapshot.data;
                return Column(
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Beacons',
                          style: GoogleFonts.getFont(
                            'Lato',
                            fontSize: 20.sp,
                            fontWeight: FontWeight.w700,
                            color: myColorsPalette.textAction,
                            letterSpacing: 0.4,
                          ),
                        ),
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            padding: EdgeInsets.symmetric(
                                vertical: 0, horizontal: 10.w),
                            backgroundColor: myColorsPalette.primary,
                            elevation: 0,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(4),
                            ),
                          ),
                          onPressed: () async {
                            if (selectedBleClient != null) {
                              if (!sendingActive) {
                                _sendBeacons(
                                  selectedBleClient!,
                                  foregroundInterval,
                                );
                              } else {
                                _stopSending();
                              }
                            } else {
                              showSettings();
                            }
                          },
                          child: Text(
                            sendingActive ? 'Stop sending' : 'Start sending',
                            style: GoogleFonts.getFont(
                              'Lato',
                              fontSize: 14.sp,
                              letterSpacing: -0.4,
                              fontWeight: FontWeight.w600,
                              color: Colors.white,
                              height: 1,
                            ),
                          ),
                        )
                      ],
                    ),
                    SizedBox(height: 20.h),
                    Flexible(
                      child: ListView.separated(
                          shrinkWrap: true,
                          separatorBuilder: (context, index) =>
                              SizedBox(height: 20.h),
                          itemCount: beacons?.length ?? 0,
                          itemBuilder: ((context, index) {
                            BeaconScanned beaconScanned = beacons![index];

                            return GestureDetector(
                                onTap: () => showDialog(
                                    useSafeArea: false,
                                    context: context,
                                    builder: (context) {
                                      return Dialog.fullscreen(
                                        child: BeaconDetailsScreen(
                                          beaconScanned: beaconScanned,
                                        ),
                                      );
                                    }),
                                child: BeaconWidget(
                                  beaconScanned: beaconScanned,
                                ));
                          })),
                    ),
                  ],
                );
              }
            },
          ),
        ),
      ),
    );
  }

  void showSettings() {
    showDialog(
        useSafeArea: false,
        context: context,
        builder: (context) {
          return Dialog.fullscreen(
              child: SettingsScreen(
            account: account,
            backgroundInterval: backgroundInterval,
            foregroundInterval: foregroundInterval,
            selectedBleClient: selectedBleClient,
            selectedMajorNumber: selectedMajorNumber,
            selectedUuid: selectedUuid,
            availableBleClients: availableBleClients,
            onSearch: (
              backgroundIntervalForm,
              foregroundIntervalForm,
              selectedMajorNumberForm,
              selectedUuidForm,
              selectedBleClientForm,
            ) {
              _stopSending();
              setState(() {
                backgroundInterval = backgroundIntervalForm;
                foregroundInterval = foregroundIntervalForm;
                selectedMajorNumber = selectedMajorNumberForm;
                selectedUuid = selectedUuidForm;
                selectedBleClient = selectedBleClientForm;
              });
            },
            onAddBleClient: () async {
              List<BleClient> updatedAvailableBleClients =
                  await ref.read(beaconsRepositoryProvider).getBleClients();
              BleClient? updatedSelectedBleClient = (availableBleClients ?? [])
                  .firstWhereOrNull(
                      (element) => element.user!.id == account.id);

              setState(() {
                availableBleClients = updatedAvailableBleClients;
                selectedBleClient = updatedSelectedBleClient;
              });
              // ignore: use_build_context_synchronously
              context.pop();
            },
          ));
        });
  }

  Stream<List<BeaconScanned>?> beaconStream() async* {
    List<BeaconScanned> foundedBeacons = [];
    final snapshots = beaconEventsController.stream;

    await for (final snapshot in snapshots) {
      BeaconScanned beacon = BeaconScanned.fromJson(json.decode(snapshot));
      if (foundedBeacons.map((b) => b.minor).contains(beacon.minor)) {
        foundedBeacons.removeWhere((b) => b.minor == beacon.minor);

        if (beacon.rssi != '0') {
          foundedBeacons.add(beacon);
        }
      } else {
        foundedBeacons.add(beacon);
      }
      foundedBeacons.sort((a, b) => a.rssi!.compareTo(b.rssi!));
      if (selectedMajorNumber != null) {
        foundedBeacons = foundedBeacons
            .where(
              (b) => b.major == selectedMajorNumber.toString(),
            )
            .toList();
      }
      if (selectedUuid != null && selectedUuid != '') {
        foundedBeacons = foundedBeacons
            .where(
              (b) => b.uuid.toUpperCase() == selectedUuid!.toUpperCase(),
            )
            .toList();
      }

      foundedBeacons =
          foundedBeacons.where((element) => element.rssi != '0').toList();

      scannedBeacons = foundedBeacons;

      yield foundedBeacons;
    }
  }
}
