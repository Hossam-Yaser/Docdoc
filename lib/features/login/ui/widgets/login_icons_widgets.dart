import 'package:doc_doc/core/helpers/spacing.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LoginIconsWidgets extends StatelessWidget {
  const LoginIconsWidgets({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        InkWell(
          onTap: () {},
          child: Image.asset(
            "assets/icons/googleIcon.png",
            width: 40.w,
            height: 40.h,
          ),
        ),
        horizontalSpacing(30),
        InkWell(
          onTap: () {},
          child: Image.asset(
            "assets/icons/facebookIcon.png",
            width: 40.w,
            height: 40.h,
          ),
        ),
        horizontalSpacing(30),
        InkWell(
          onTap: () {},
          child: Image.asset(
            "assets/icons/icloudIcon.png",
            width: 40.w,
            height: 40.h,
          ),
        ),
      ],
    );
  }
}
