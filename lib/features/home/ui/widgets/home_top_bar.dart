import 'package:doc_doc/core/theming/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeTopBar extends StatelessWidget {
  const HomeTopBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Hi, Omar", style: TextStyles.font18DarkBlueBold),
            SizedBox(height: 10.h),
            Text("How Are you Today?", style: TextStyles.font13greyregular),
          ],
        ),
        const Spacer(),
        GestureDetector(
          onTap: () {},
          child: CircleAvatar(
            radius: 24.r,
            backgroundImage: const AssetImage("assets/icons/Notification.png"),
          ),
        ),
      ],
    );
  }
}
