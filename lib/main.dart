import 'package:clump_task/routes/pages.dart';
import 'package:clump_task/routes/routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

void main() {
  runApp(const ClumpApp());
}

class ClumpApp extends StatelessWidget {
  const ClumpApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Sizer(
      builder: (context, orientation, deviceType) {
        return GetMaterialApp(
          title: 'Clump',
          initialRoute: Routes.splash,
          getPages: pages,
        );
      },
    );
  }
}
