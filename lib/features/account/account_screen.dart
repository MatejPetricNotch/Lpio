import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lpio/common_widgets/my_text_field.dart';
import 'package:lpio/features/account/controllers/account_screen_controller.dart';
import 'package:lpio/routing/go_router.dart';
import 'package:lpio/theme/my_colors/my_colors_palette.dart';

class AccountScreen extends ConsumerWidget {
  const AccountScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final accountScreenController = ref.watch(accountScreenControllerProvider);

    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Padding(
          padding: EdgeInsets.symmetric(vertical: 15.h, horizontal: 20.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 15.h),
              Text(
                'Account',
                style: GoogleFonts.getFont(
                  'Lato',
                  fontSize: 20.sp,
                  fontWeight: FontWeight.w700,
                  color: myColorsPalette.textAction,
                  letterSpacing: 0.4,
                ),
              ),
              accountScreenController.when(
                data: (data) => Column(
                  children: [
                    SizedBox(height: 20.h),
                    MyTextField(
                      enabled: false,
                      name: 'name',
                      label: 'First Name',
                      hintText: 'First Name',
                      initialValue: data.firstName,
                    ),
                    SizedBox(height: 20.h),
                    MyTextField(
                      enabled: false,
                      name: 'last',
                      label: 'Last Name',
                      hintText: 'Last Name',
                      initialValue: data.lastName,
                    ),
                    SizedBox(height: 20.h),
                    MyTextField(
                      enabled: false,
                      name: 'email',
                      label: 'Email',
                      hintText: 'Email',
                      initialValue: data.email,
                    ),
                    SizedBox(height: 20.h),
                    MyTextField(
                      enabled: false,
                      name: 'language',
                      label: 'Language',
                      hintText: 'Language',
                      initialValue: data.langKey,
                    )
                  ],
                ),
                loading: () => const Center(
                  child: CircularProgressIndicator(),
                ),
                error: (e, st) => Center(child: Text(e.toString())),
              ),
              const Spacer(),
              Center(
                child: SizedBox(
                  width: double.infinity,
                  child: OutlinedButton(
                    style: OutlinedButton.styleFrom(
                      side: BorderSide(
                        color: myColorsPalette.textAction,
                        width: 1,
                      ),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(4.r),
                      ),
                    ),
                    onPressed: () async {
                      bool isSignedOut = await ref
                          .read(accountScreenControllerProvider.notifier)
                          .signOut();
                      if (isSignedOut) {
                        // ignore: use_build_context_synchronously
                        context.goNamed(AppRoute.loginScreen.name);
                      }
                    },
                    child: ref.watch(signOutLoadingProvider)
                        ? SizedBox(
                            height: 20.h,
                            width: 20.w,
                            child: CircularProgressIndicator(
                              color: myColorsPalette.textAction,
                            ),
                          )
                        : Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.logout,
                                color: myColorsPalette.textAction,
                              ),
                              SizedBox(width: 10.w),
                              Text(
                                'Sign out',
                                style: GoogleFonts.getFont(
                                  'Lato',
                                  fontSize: 18.sp,
                                  fontWeight: FontWeight.w600,
                                  color: myColorsPalette.textAction,
                                  letterSpacing: -0.4,
                                ),
                              ),
                            ],
                          ),
                  ),
                ),
              ),
              SizedBox(height: 22.h),
            ],
          ),
        ),
      ),
    );
  }
}
