import 'package:doc_doc/core/helpers/spacing.dart';
import 'package:doc_doc/core/theming/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LoginIconsWidgets extends StatelessWidget {
  const LoginIconsWidgets({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Expanded(child: Divider()),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: Text(
                "OR Sign in with",
                style: TextStyles.font13greyregular,
              ),
            ),
            Expanded(child: Divider()),
          ],
        ),
        verticalSpacing(32),
        Row(
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
        ),
      ],
    );
  }
}
