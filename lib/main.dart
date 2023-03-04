import 'package:flutter/material.dart';
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
        return Container(
          width: 100.w,
          height: 100.h,
          color: Colors.green,
        );
      },
    );
  }
}
