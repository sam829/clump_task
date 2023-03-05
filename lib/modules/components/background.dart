import 'package:clump_task/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class ClumpBackground extends StatelessWidget {
  const ClumpBackground({super.key, this.bottomContainer, this.topContainer});

  final Widget? topContainer;
  final Widget? bottomContainer;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // Top Green Container
        Container(
          color: ClumpColors.primaryColor,
          width: 100.w,
          height: 36.h,
          child: topContainer,
        ),

        // Bottom White Container
        Expanded(
          child: Container(
            color: Colors.white,
            width: 100.w,
            child: bottomContainer,
          ),
        )
      ],
    );
  }
}
