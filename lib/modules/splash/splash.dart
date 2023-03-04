import 'package:clump_task/utils/assets.dart';
import 'package:clump_task/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:sizer/sizer.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      systemNavigationBarColor: ClumpColors.primaryColor,
      statusBarColor: ClumpColors.primaryColor,
    ));
    return Container(
      width: 100.w,
      height: 100.h,
      color: ClumpColors.primaryColor,
      child: Center(
        child: Image.asset(
          AssetImages.splashLogo,
          width: 62.w,
          height: 11.h,
        ),
      ),
    );
  }
}
