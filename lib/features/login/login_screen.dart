// ignore_for_file: use_build_context_synchronously

import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:flutter_keyboard_visibility/flutter_keyboard_visibility.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:form_builder_validators/form_builder_validators.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lpio/common_widgets/my_text_field.dart';
import 'package:lpio/features/login/controllers/login_screen_controller.dart';
import 'package:lpio/features/login/domain/authenticate_user_dto.dart';
import 'package:lpio/features/login/widgets/login_title_widget.dart';
import 'package:lpio/routing/go_router.dart';
import 'package:lpio/theme/my_colors/my_colors_palette.dart';

final _formKey = GlobalKey<FormBuilderState>();

class LoginScreen extends ConsumerWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final loginScreenController = ref.watch(asyncLoginScreenControllerProvider);
    ref.listen(asyncLoginScreenControllerProvider, (previous, next) {
      if (next.value == true) {
        context.goNamed(AppRoute.homeScreen.name);
      }
    });

    return KeyboardDismissOnTap(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: SafeArea(
            child: loginScreenController.isLoading ||
                    loginScreenController.value == true
                ? Container(
                    color: Colors.white,
                  )
                : FormBuilder(
                    key: _formKey,
                    child: Padding(
                      padding: EdgeInsets.symmetric(
                          vertical: 38.h, horizontal: 20.w),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          SizedBox(height: 38.h),
                          const LoginTitleWidget(),
                          SizedBox(height: 64.h),
                          MyTextField(
                            label: 'Username',
                            name: 'username',
                            hintText: 'Your username',
                            validators: [
                              FormBuilderValidators.required(
                                errorText: 'Username is required',
                              ),
                            ],
                          ),
                          SizedBox(height: 20.h),
                          MyTextField(
                            label: 'Password',
                            name: 'password',
                            hintText: 'Your password',
                            isPassword: true,
                            validators: [
                              FormBuilderValidators.required(
                                errorText: 'Password is required',
                              ),
                            ],
                          ),
                          SizedBox(height: 18.h),
                          FormBuilderCheckbox(
                            decoration: const InputDecoration(
                              contentPadding: EdgeInsets.zero,
                              border: InputBorder.none,
                              errorBorder: InputBorder.none,
                              enabledBorder: InputBorder.none,
                              focusedBorder: InputBorder.none,
                              disabledBorder: InputBorder.none,
                              focusedErrorBorder: InputBorder.none,
                              isDense: true,
                            ),
                            initialValue: false,
                            activeColor: myColorsPalette.primary,
                            contentPadding: EdgeInsets.zero,
                            name: 'remember',
                            title: Transform.translate(
                              offset: const Offset(-20, 0),
                              child: Text(
                                'Remember me',
                                style: GoogleFonts.getFont(
                                  'Lato',
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500,
                                  color: myColorsPalette.primary,
                                ),
                              ),
                            ),
                          ),
                          SizedBox(height: 64.h),
                          ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor: myColorsPalette.primary,
                              elevation: 0,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(4),
                              ),
                            ),
                            onPressed: () async {
                              if (_formKey.currentState!.validate()) {
                                String? token = await ref
                                    .read(asyncLoginScreenControllerProvider
                                        .notifier)
                                    .loginAndSaveToken(
                                        authenticateUserDto:
                                            AuthenticateUserDto(
                                      username: _formKey.currentState
                                          ?.fields['username']?.value,
                                      password: _formKey.currentState
                                          ?.fields['password']?.value,
                                      rememberMe: _formKey.currentState
                                          ?.fields['remember']?.value,
                                    ));

                                if (token != null) {
                                  context.goNamed(AppRoute.homeScreen.name);
                                } else {
                                  showDialog(
                                    context: context,
                                    builder: (BuildContext context) {
                                      return AlertDialog(
                                        title: const Text("Error"),
                                        content:
                                            const Text("Something went wrong!"),
                                        actions: [
                                          ElevatedButton(
                                              onPressed: () => context.pop(),
                                              child: const Text('close')),
                                        ],
                                      );
                                    },
                                  );
                                }
                              }
                            },
                            child: ref.watch(loginLoadingProvider)
                                ? SizedBox(
                                    height: 20.h,
                                    width: 20.w,
                                    child: const CircularProgressIndicator(
                                      color: Colors.white,
                                    ),
                                  )
                                : Text(
                                    'Sign in',
                                    style: GoogleFonts.getFont(
                                      'Lato',
                                      fontSize: 18,
                                      fontWeight: FontWeight.w500,
                                      color: Colors.white,
                                    ),
                                  ),
                          )
                        ],
                      ),
                    ),
                  ),
          ),
        ),
      ),
    );
  }
}
