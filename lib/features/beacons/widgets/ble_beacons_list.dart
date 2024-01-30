// import 'dart:async';
// import 'dart:convert';
// import 'dart:io';
// import 'package:beacons_plugin/beacons_plugin.dart';
// import 'package:flutter/material.dart';
// import 'package:google_fonts/google_fonts.dart';
// import 'package:lpio/features/beacons/domain/beacon_scanned.dart';
// import 'package:lpio/features/beacons/widgets/beacon_widget.dart';

// class BleBeaconList extends StatefulWidget {
//   final StreamController<String> controller;
//   final Widget onLoading;
//   final Widget onError;
//   final Widget separator;
//   final Widget beaconWidget;
//   final Function(BeaconScanned beaconScanned) onTap;

//   const BleBeaconList({
//     super.key,
//     required this.controller,
//     required this.onLoading,
//     required this.onError,
//     required this.separator,
//     required this.beaconWidget,
//     required this.onTap,
//   });

//   @override
//   State<BleBeaconList> createState() => _BleBeaconListState();

//   Future<void> initPlatformState(controller, mounted) async {
//     if (Platform.isAndroid) {
//       await BeaconsPlugin.setDisclosureDialogMessage(
//           title: "Need Location Permission",
//           message: "This app collects location data to work with beacons.");
//     }
//     await BeaconsPlugin.listenToBeacons(controller);

//     if (Platform.isAndroid) {
//       BeaconsPlugin.channel.setMethodCallHandler((call) async {
//         if (call.method == 'scannerReady') {
//           await BeaconsPlugin.startMonitoring();
//         }
//       });
//     } else if (Platform.isIOS) {
//       await BeaconsPlugin.addRegion(
//         'beacon',
//         'b35e9cda-6059-4bd9-ad0a-0ce62714d21f',
//       );
//       await BeaconsPlugin.startMonitoring();
//     }
//     if (!mounted) return;
//   }
// }

// class _BleBeaconListState extends State<BleBeaconList> {
//   @override
//   void initState() {
//     super.initState();
//   }

//   @override
//   void dispose() {
//     super.dispose();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return StreamBuilder(
//       stream: beaconStream(widget.controller),
//       builder: (context, snapshot) {
//         if (snapshot.connectionState == ConnectionState.waiting) {
//           return widget.onLoading;
//         } else if (snapshot.hasError) {
//           return widget.onError;
//         } else {
//           List<BeaconScanned>? beacons = snapshot.data;
//           return Flexible(
//             child: ListView.separated(
//                 shrinkWrap: true,
//                 separatorBuilder: (context, index) => widget.separator,
//                 itemCount: beacons?.length ?? 0,
//                 itemBuilder: ((context, index) {
//                   BeaconScanned beaconScanned = beacons![index];
//                   return GestureDetector(
//                     onTap: widget.onTap(beaconScanned),
//                     child: BeaconWidget(beaconScanned: beaconScanned),
//                   );
//                 })),
//           );
//         }
//       },
//     );
//   }
// }

// Future<void> initPlatformState(controller, mounted) async {
//   if (Platform.isAndroid) {
//     await BeaconsPlugin.setDisclosureDialogMessage(
//         title: "Need Location Permission",
//         message: "This app collects location data to work with beacons.");
//   }
//   await BeaconsPlugin.listenToBeacons(controller);

//   if (Platform.isAndroid) {
//     BeaconsPlugin.channel.setMethodCallHandler((call) async {
//       if (call.method == 'scannerReady') {
//         await BeaconsPlugin.startMonitoring();
//       }
//     });
//   } else if (Platform.isIOS) {
//     await BeaconsPlugin.addRegion(
//       'beacon',
//       'b35e9cda-6059-4bd9-ad0a-0ce62714d21f',
//     );
//     await BeaconsPlugin.startMonitoring();
//   }
//   if (!mounted) return;
// }

// Stream<List<BeaconScanned>?> beaconStream(beaconEventsController) async* {
//   List<BeaconScanned> foundedBeacons = [];
//   final snapshots = beaconEventsController.stream;

//   await for (final snapshot in snapshots) {
//     BeaconScanned beacon = BeaconScanned.fromJson(json.decode(snapshot));
//     if (foundedBeacons.map((b) => b.minor).contains(beacon.minor)) {
//       foundedBeacons.removeWhere((b) => b.minor == beacon.minor);

//       foundedBeacons.add(beacon);
//     } else {
//       foundedBeacons.add(beacon);
//     }
//     foundedBeacons.sort((a, b) => a.rssi!.compareTo(b.rssi!));
//     yield foundedBeacons;
//   }
// }

// Widget buildBeaconWidget(BeaconScanned beaconScanned) {
//   return Container(
//     padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 16),
//     decoration: BoxDecoration(
//       borderRadius: BorderRadius.circular(4),
//       border: Border.all(
//         width: 1,
//         color: const Color.fromRGBO(234, 236, 238, 1),
//       ),
//     ),
//     child: Column(
//       mainAxisSize: MainAxisSize.min,
//       children: [
//         buildBeaconItem(title: 'Minor Number', data: beaconScanned.minor),
//         const SizedBox(height: 16),
//         buildBeaconItem(title: 'Major Number', data: beaconScanned.major),
//         const SizedBox(height: 16),
//         buildBeaconItem(title: 'UUID', data: beaconScanned.uuid),
//         const SizedBox(height: 16),
//         buildBeaconItem(title: 'Ble Name', data: beaconScanned.name ?? '-'),
//         const SizedBox(height: 16),
//         buildBeaconItem(title: 'TX', data: beaconScanned.txPower ?? '-'),
//         const SizedBox(height: 16),
//         buildBeaconItem(title: 'RSSI', data: beaconScanned.rssi ?? '-'),
//       ],
//     ),
//   );
// }

// Widget buildBeaconItem({required String title, required String data}) {
//   return Row(
//     crossAxisAlignment: CrossAxisAlignment.start,
//     children: [
//       Text(
//         title,
//         style: GoogleFonts.getFont(
//           'Lato',
//           fontSize: 14,
//           fontWeight: FontWeight.w500,
//           color: const Color.fromRGBO(149, 149, 149, 1),
//           letterSpacing: -0.24,
//         ),
//       ),
//       const SizedBox(width: 70),
//       Expanded(
//         child: Text(
//           data,
//           style: GoogleFonts.getFont(
//             'Lato',
//             fontSize: 14,
//             fontWeight: FontWeight.w500,
//             color: const Color.fromRGBO(48, 62, 79, 1),
//             letterSpacing: -0.24,
//           ),
//           maxLines: 2,
//           textAlign: TextAlign.right,
//         ),
//       ),
//     ],
//   );
// }
