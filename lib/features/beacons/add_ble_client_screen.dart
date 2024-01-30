import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:flutter_keyboard_visibility/flutter_keyboard_visibility.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:form_builder_validators/form_builder_validators.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lpio/common_widgets/my_text_field.dart';
import 'package:lpio/features/account/domain/account.dart';
import 'package:lpio/features/beacons/data/beacons_repository.dart';
import 'package:lpio/features/beacons/domain/ble_client.dart';
import 'package:lpio/features/beacons/domain/ble_client_dto.dart';
import 'package:lpio/features/beacons/domain/ble_user.dart';
import 'package:lpio/theme/my_colors/my_colors_palette.dart';

GlobalKey<FormBuilderState> formKey = GlobalKey<FormBuilderState>();

class AddBleClientScreen extends ConsumerWidget {
  final Account account;
  final VoidCallback onAddBleClient;
  const AddBleClientScreen({
    super.key,
    required this.account,
    required this.onAddBleClient,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return KeyboardDismissOnTap(
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          centerTitle: false,
          title: Text(
            'Add Ble Client',
            style: GoogleFonts.getFont(
              'Lato',
              fontSize: 20.sp,
              fontWeight: FontWeight.w700,
              color: myColorsPalette.textAction,
              letterSpacing: 0.4,
            ),
          ),
        ),
        body: Padding(
          padding: EdgeInsets.symmetric(vertical: 15.h, horizontal: 20.w),
          child: FormBuilder(
              key: formKey,
              child: SingleChildScrollView(
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: 16.h),
                      MyTextField(
                        label: 'Ble Client name',
                        name: 'name',
                        hintText: 'Enter Ble Client name',
                        validators: [
                          FormBuilderValidators.required(
                            errorText: 'Ble Client name is required',
                          ),
                        ],
                      ),
                      SizedBox(height: 20.h),
                      const MyTextField(
                        label: 'Description',
                        name: 'description',
                        hintText: 'Enter description',
                      ),
                      SizedBox(height: 56.h),
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
                              ref
                                  .read(addBleClientLoadingProvider.notifier)
                                  .state = true;
                              BleClient? bleClient = await ref
                                  .read(beaconsRepositoryProvider)
                                  .createNewBleClient(
                                    BleClientDto(
                                        name: formKey.currentState
                                            ?.fields['name']?.value,
                                        description: formKey.currentState
                                            ?.fields['description']?.value,
                                        user: BleUser(
                                          id: account.id,
                                          login: account.login!,
                                        )),
                                  );
                              ref
                                  .read(addBleClientLoadingProvider.notifier)
                                  .state = false;

                              if (bleClient != null) {
                                onAddBleClient();
                              }
                            }
                          },
                          child: ref.watch(addBleClientLoadingProvider)
                              ? SizedBox(
                                  height: 20.h,
                                  width: 20.w,
                                  child: const CircularProgressIndicator(
                                    color: Colors.white,
                                  ),
                                )
                              : Text(
                                  'Add',
                                  style: GoogleFonts.getFont(
                                    'Lato',
                                    fontSize: 18,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.white,
                                  ),
                                ),
                        ),
                      )
                    ]),
              )),
        ),
      ),
    );
  }
}

final addBleClientLoadingProvider = StateProvider.autoDispose<bool>((ref) {
  return false;
});
