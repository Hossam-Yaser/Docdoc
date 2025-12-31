import 'package:doc_doc/core/helpers/spacing.dart';
import 'package:doc_doc/core/theming/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shimmer/shimmer.dart';

class SpecialityShimmerLoading extends StatelessWidget {
  const SpecialityShimmerLoading({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 90.h,
      child: Shimmer.fromColors(
        baseColor: Colors.grey.shade300,
        highlightColor: Colors.grey.shade100,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: 6,
          itemBuilder: (context, index) {
            return DoctorSpecialityShimmerItem(itemIndex: index);
          },
        ),
      ),
    );
  }
}

class DoctorSpecialityShimmerItem extends StatelessWidget {
  final int itemIndex;

  const DoctorSpecialityShimmerItem({super.key, required this.itemIndex});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsetsDirectional.only(start: itemIndex == 0 ? 0 : 24.w),
      child: Column(
        children: [
          // 🔵 Circle avatar shimmer
          Container(
            width: 56.w,
            height: 56.w,
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              color: ColorsManager.lighterGrey,
            ),
          ),

          verticalSpacing(8),

          // 📝 Text shimmer
          Container(
            width: 48.w,
            height: 12.h,
            decoration: BoxDecoration(
              color: ColorsManager.lighterGrey,
              borderRadius: BorderRadius.circular(6.r),
            ),
          ),
        ],
      ),
    );
  }
}
