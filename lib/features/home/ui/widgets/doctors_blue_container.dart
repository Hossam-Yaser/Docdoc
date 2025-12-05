import 'package:doc_doc/core/helpers/spacing.dart';
import 'package:doc_doc/core/theming/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DoctorsBlueContainer extends StatelessWidget {
  const DoctorsBlueContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 197.h,

      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Container(
            width: double.infinity,
            height: 167.h,
            padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 16.h),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(24.r),
              image: const DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage("assets/images/blue_container_bg.png"),
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Book and\nschedule with\nnearest doctor",
                  style: TextStyles.font16WhiteSemiBold,
                ),
                verticalSpacing(16),
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(48.r),
                    ),
                    minimumSize: Size(109.w, 38.h),
                  ),
                  child: Text(
                    'Find Nearby',
                    style: TextStyles.font12BlueRegular,
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            top: 0,
            right: 16,
            child: Image.asset("assets/images/home_nurse.png", height: 200.h),
          ),
        ],
      ),
    );
  }
}
