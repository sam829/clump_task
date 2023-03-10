import 'package:clump_task/modules/components/background.dart';
import 'package:clump_task/modules/components/card.dart';
import 'package:clump_task/modules/log_in/log_in_controller.dart';
import 'package:clump_task/utils/colors.dart';
import 'package:clump_task/utils/strings.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';

class LogInScreen extends GetView<LogInController> {
  const LogInScreen({super.key});

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      systemNavigationBarColor: Colors.white,
      systemNavigationBarIconBrightness: Brightness.dark,
      statusBarColor: ClumpColors.primaryColor,
    ));
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            // Background
            ClumpBackground(
              topContainer: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: (5.6).w, top: (6.8).h),
                    child: Text(
                      Strings.logIn,
                      style: GoogleFonts.roboto(
                        fontSize: 30,
                        letterSpacing: 1.5,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 6.w, top: (1.6).h),
                    child: Text(
                      Strings.welcomeBack,
                      style: GoogleFonts.roboto(
                        fontSize: 15.00,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
              ),
              bottomContainer: Padding(
                padding: EdgeInsets.only(bottom: 6.h),
                child: Align(
                  alignment: Alignment.bottomCenter,
                  child: GestureDetector(
                    onTap: () {},
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(
                          Strings.dontHaveAnAccount,
                          style: GoogleFonts.roboto(
                            fontSize: 15,
                            letterSpacing: 0.75,
                            color: ClumpColors.hintColor,
                          ),
                        ),
                        Text(
                          Strings.signUp,
                          style: GoogleFonts.roboto(
                            fontSize: 15,
                            letterSpacing: 0.75,
                            fontWeight: FontWeight.w500,
                            color: ClumpColors.darkHintColor,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            // Log In Card
            Align(
                child: SizedBox(
              width: 89.w,
              height: 50.h,
              child: ClumpCard(
                child: Form(
                  key: controller.formKey,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(
                          left: 5.w,
                          right: 5.w,
                          top: 4.h,
                          bottom: 2.h,
                        ),
                        child: TextFormField(
                          controller: controller.emailController,
                          validator: controller.validateEmail,
                          decoration: const InputDecoration(
                            hintText: Strings.emailHint,
                            border: OutlineInputBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10))),
                          ),
                          textInputAction: TextInputAction.next,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                          left: 5.w,
                          right: 5.w,
                          bottom: 5.h,
                        ),
                        child: TextFormField(
                          controller: controller.passwordController,
                          validator: controller.validatePassword,
                          decoration: const InputDecoration(
                            border: OutlineInputBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10))),
                            hintText: Strings.passwordHint,
                          ),
                          textInputAction: TextInputAction.done,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 5.w),
                        child: ElevatedButton(
                          onPressed: () {
                            controller.logIn(() {
                              ScaffoldMessenger.of(context).showSnackBar(
                                  const SnackBar(
                                      content: Text('Logging you in....')));
                            });
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: ClumpColors.primaryColor,
                            minimumSize: Size.fromHeight(7.h),
                            elevation: 0.0,
                          ),
                          child: const Text(
                            Strings.logIn,
                            style: TextStyle(fontSize: 18),
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                            left: 5.w, right: 5.w, top: 2.h, bottom: 3.h),
                        child: GestureDetector(
                          onTap: () {},
                          child: Text(
                            Strings.forgotPassword,
                            style: GoogleFonts.roboto(
                              fontSize: 16,
                              letterSpacing: 0.8,
                              color: ClumpColors.hintColor,
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ))
          ],
        ),
      ),
    );
  }
}
