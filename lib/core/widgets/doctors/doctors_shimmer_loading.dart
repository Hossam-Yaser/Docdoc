import 'package:doc_doc/core/helpers/spacing.dart';
import 'package:doc_doc/core/theming/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shimmer/shimmer.dart';

class DoctorsShimmerLoading extends StatelessWidget {
  const DoctorsShimmerLoading({super.key});

  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
      baseColor: Colors.grey.shade300,
      highlightColor: Colors.grey.shade100,
      child: ListView.builder(
        itemCount: 4,
        shrinkWrap: true,
        itemBuilder: (context, index) {
          return const DoctorShimmerItem();
        },
      ),
    );
  }
}

class DoctorShimmerItem extends StatelessWidget {
  const DoctorShimmerItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 16.h),
      child: Row(
        children: [
          // 🖼 Doctor image shimmer
          Container(
            width: 110.w,
            height: 120.h,
            decoration: BoxDecoration(
              color: ColorsManager.lighterGrey,
              borderRadius: BorderRadius.circular(12),
            ),
          ),

          horizontalSpacing(16),

          // 📝 Text shimmer
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Name
                Container(
                  width: double.infinity,
                  height: 18.h,
                  decoration: BoxDecoration(
                    color: ColorsManager.lighterGrey,
                    borderRadius: BorderRadius.circular(6.r),
                  ),
                ),

                verticalSpacing(8),

                // Degree | Phone
                Container(
                  width: 140.w,
                  height: 12.h,
                  decoration: BoxDecoration(
                    color: ColorsManager.lighterGrey,
                    borderRadius: BorderRadius.circular(6.r),
                  ),
                ),

                verticalSpacing(8),

                // Email
                Container(
                  width: 180.w,
                  height: 12.h,
                  decoration: BoxDecoration(
                    color: ColorsManager.lighterGrey,
                    borderRadius: BorderRadius.circular(6.r),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
