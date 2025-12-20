import 'package:doc_doc/core/helpers/constants.dart';
import 'package:doc_doc/core/helpers/spacing.dart';
import 'package:doc_doc/core/theming/colors.dart';
import 'package:doc_doc/core/theming/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class HomeTopBar extends StatelessWidget {
  final GlobalKey<ScaffoldState> scaffoldKey;
  const HomeTopBar({super.key, required this.scaffoldKey});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Hi, $userName", style: TextStyles.font18DarkBlueBold),
            SizedBox(height: 10.h),
            Text("How Are you Today?", style: TextStyles.font13greyregular),
          ],
        ),
        const Spacer(),
        GestureDetector(
          onTap: () {},
          child: CircleAvatar(
            radius: 24.r,
            backgroundColor: ColorsManager.lighterGrey,
            child: SvgPicture.asset(
              "assets/svgs/home_search.svg",
              color: Colors.black,
            ),
          ),
        ),
        horizontalSpacing(8),
        GestureDetector(
          onTap: () {},
          child: CircleAvatar(
            radius: 24.r,
            backgroundColor: ColorsManager.lighterGrey,
            child: SvgPicture.asset("assets/svgs/home_notification.svg"),
          ),
        ),
        IconButton(
          onPressed: () {
            scaffoldKey.currentState?.openDrawer();
          },
          icon: Icon(Icons.menu),
        ),
      ],
    );
  }
}
