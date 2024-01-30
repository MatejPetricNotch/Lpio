import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:flutter_keyboard_visibility/flutter_keyboard_visibility.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lpio/common_widgets/my_select_ble_clients_field.dart';
import 'package:lpio/common_widgets/my_select_field.dart';
import 'package:lpio/common_widgets/my_text_field.dart';
import 'package:lpio/features/account/domain/account.dart';
import 'package:lpio/features/beacons/add_ble_client_screen.dart';

import 'package:lpio/features/beacons/domain/ble_client.dart';
import 'package:lpio/theme/my_colors/my_colors_palette.dart';

List<String> optionsIntervals = ['1s', '2s', '5s', '10s', '30s', '60s'];
GlobalKey<FormBuilderState> formKey = GlobalKey<FormBuilderState>();

class SettingsScreen extends ConsumerWidget {
  final Account account;
  final int backgroundInterval;
  final int foregroundInterval;
  final BleClient? selectedBleClient;
  final int? selectedMajorNumber;
  final String? selectedUuid;
  final Function(
    int backgroundIntervalForm,
    int foregroundIntervalForm,
    int? selectedMajorNumberForm,
    String? selectedUuidForm,
    BleClient selectedBleClientForm,
  ) onSearch;
  final VoidCallback onAddBleClient;

  final List<BleClient>? availableBleClients;
  const SettingsScreen({
    super.key,
    required this.account,
    required this.onSearch,
    required this.backgroundInterval,
    required this.foregroundInterval,
    this.selectedBleClient,
    this.selectedMajorNumber,
    this.selectedUuid,
    this.availableBleClients,
    required this.onAddBleClient,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return SafeArea(
      child: KeyboardDismissOnTap(
        child: Scaffold(
            backgroundColor: Colors.white,
            body: SingleChildScrollView(
              child: Padding(
                  padding:
                      EdgeInsets.symmetric(vertical: 15.h, horizontal: 20.w),
                  child: FormBuilder(
                    key: formKey,
                    initialValue: {
                      'background_interval': '${backgroundInterval}s',
                      'interval': '${foregroundInterval}s',
                      'client': selectedBleClient,
                      'uuid': selectedUuid,
                      'major': selectedMajorNumber != null
                          ? (selectedMajorNumber.toString())
                          : null,
                    },
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(height: 15.h),
                        Text(
                          'Settings',
                          style: GoogleFonts.getFont(
                            'Lato',
                            fontSize: 20.sp,
                            fontWeight: FontWeight.w700,
                            color: myColorsPalette.textAction,
                            letterSpacing: 0.4,
                          ),
                        ),
                        SizedBox(height: 16.h),
                        MySelectBleClientsField(
                          name: 'client',
                          label: 'BLE Client',
                          hintText: 'Select BLE Client',
                          options: availableBleClients,
                        ),
                        Align(
                          alignment: Alignment.centerRight,
                          child: TextButton(
                            style: const ButtonStyle(
                                padding:
                                    MaterialStatePropertyAll(EdgeInsets.zero)),
                            onPressed: () {
                              showDialog(
                                  useSafeArea: false,
                                  context: context,
                                  builder: (context) {
                                    return Dialog.fullscreen(
                                      child: AddBleClientScreen(
                                        account: account,
                                        onAddBleClient: onAddBleClient,
                                      ),
                                    );
                                  });
                            },
                            child: Text(
                              'Add Ble Client',
                              style: GoogleFonts.getFont(
                                'Lato',
                                fontSize: 14.sp,
                                height: 0.2,
                                fontWeight: FontWeight.w700,
                                color: myColorsPalette.textAction,
                                letterSpacing: 0.4,
                              ),
                            ),
                          ),
                        ),
                        MySelectField(
                          name: 'interval',
                          label: 'Sending interval',
                          hintText: 'Select sending interval',
                          options: optionsIntervals,
                        ),
                        SizedBox(height: 20.h),
                        MySelectField(
                          name: 'background_interval',
                          label: 'Sending interval (background)',
                          hintText: 'Select sending interval (background)',
                          options: optionsIntervals,
                        ),
                        SizedBox(height: 20.h),
                        const MyTextField(
                          label: 'UUID',
                          name: 'uuid',
                          hintText: 'Enter UUID',
                        ),
                        SizedBox(height: 20.h),
                        const MyTextField(
                          label: 'Major number',
                          name: 'major',
                          hintText: 'Enter Major number',
                          keyboardType: TextInputType.number,
                        ),
                        SizedBox(height: 64.h),
                        SizedBox(
                          width: double.infinity,
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor: myColorsPalette.primary,
                              elevation: 0,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(4),
                              ),
                            ),
                            onPressed: () async {
                              if (formKey.currentState!.validate()) {
                                int foregroundIntervalForm = int.parse(formKey
                                    .currentState?.fields['interval']?.value
                                    .replaceAll('s', ''));
                                int backgroundIntervalForm = int.parse(formKey
                                    .currentState
                                    ?.fields['background_interval']
                                    ?.value
                                    .replaceAll('s', ''));

                                String? uuidForm =
                                    formKey.currentState?.fields['uuid']?.value;
                                String? majorForm = formKey
                                    .currentState?.fields['major']?.value;
                                BleClient bleClientForm = formKey
                                    .currentState?.fields['client']?.value;

                                onSearch(
                                  backgroundIntervalForm,
                                  foregroundIntervalForm,
                                  (majorForm != null && majorForm != '')
                                      ? int.parse(majorForm)
                                      : null,
                                  uuidForm,
                                  bleClientForm,
                                );

                                context.pop();
                              }
                            },
                            child: Text(
                              'Search',
                              style: GoogleFonts.getFont(
                                'Lato',
                                fontSize: 18,
                                fontWeight: FontWeight.w500,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(height: 100),
                      ],
                    ),
                  )),
            )),
      ),
    );
  }
}
