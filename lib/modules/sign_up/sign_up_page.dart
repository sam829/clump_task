import 'package:clump_task/modules/components/background.dart';
import 'package:clump_task/modules/components/card.dart';
import 'package:clump_task/utils/colors.dart';
import 'package:clump_task/utils/strings.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Stack(
        children: [
          ClumpBackground(
            topContainer: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.only(left: (5.6).w, top: (6.8).h),
                  child: Text(
                    Strings.signUp,
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
                    Strings.enterYourAccountDetails,
                    style: GoogleFonts.roboto(
                      fontSize: 15.00,
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Align(
            child: Container(
              padding: EdgeInsets.only(top: 10.h),
              width: 89.w,
              height: 75.h,
              child: ClumpCard(
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(
                          left: 5.w,
                          right: 5.w,
                          bottom: (2.5).h,
                          top: 4.h,
                        ),
                        child: const TextField(
                          decoration: InputDecoration(
                            border: OutlineInputBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10))),
                            hintText: Strings.fullNameHint,
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                          left: 5.w,
                          right: 5.w,
                          bottom: (2.5).h,
                        ),
                        child: const TextField(
                          decoration: InputDecoration(
                            border: OutlineInputBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10))),
                            hintText: Strings.contactNo,
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                          left: 5.w,
                          right: 5.w,
                          bottom: (2.5).h,
                        ),
                        child: const TextField(
                          decoration: InputDecoration(
                            border: OutlineInputBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10))),
                            hintText: Strings.emailHint,
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                          left: 5.w,
                          right: 5.w,
                          bottom: (2.5).h,
                        ),
                        child: const TextField(
                          decoration: InputDecoration(
                            border: OutlineInputBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10))),
                            hintText: Strings.passwordHint,
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                          left: 5.w,
                          right: 5.w,
                          bottom: 4.h,
                        ),
                        child: const TextField(
                          decoration: InputDecoration(
                            border: OutlineInputBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10))),
                            hintText: Strings.confirmPasswordHint,
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 5.w, bottom: 2.h),
                        child: Row(
                          children: [
                            ElevatedButton(
                              onPressed: () {},
                              style: ElevatedButton.styleFrom(
                                fixedSize: Size(40.w, 6.h),
                                backgroundColor: ClumpColors.primaryColor,
                              ),
                              child: const Text(
                                Strings.next,
                                style: TextStyle(fontSize: 18),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 5.w),
                              child: TextButton(
                                onPressed: () {},
                                style: TextButton.styleFrom(
                                    foregroundColor: ClumpColors.primaryColor),
                                child: const Text(
                                  Strings.cancel,
                                  style: TextStyle(fontSize: 18),
                                ),
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
          )
        ],
      )),
    );
  }
}
