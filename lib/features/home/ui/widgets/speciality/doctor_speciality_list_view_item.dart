import 'package:doc_doc/core/theming/colors.dart';
import 'package:doc_doc/core/theming/styles.dart';
import 'package:doc_doc/features/home/data/models/home_specializations_response_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class DoctorSpecialityListViewItem extends StatelessWidget {
  final Specialization? specializationData;
  final int itemIndex;
  const DoctorSpecialityListViewItem({
    super.key,
    this.specializationData,
    required this.itemIndex,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsetsDirectional.only(start: itemIndex == 0 ? 0 : 24.w),
      child: Column(
        children: [
          CircleAvatar(
            radius: 28.r,
            backgroundColor: ColorsManager.secondaryBlue,
            child: SvgPicture.asset(
              "assets/svgs/DoctorSpeciality.svg",
              fit: BoxFit.contain,
            ),
          ),
          const SizedBox(height: 8),
          Text(
            specializationData?.name ?? "General",
            textAlign: TextAlign.center,
            style: TextStyles.font12DarkBlueRegular,
          ),
        ],
      ),
    );
  }
}
