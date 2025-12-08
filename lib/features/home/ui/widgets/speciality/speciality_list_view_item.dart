import 'package:doc_doc/core/helpers/spacing.dart';
import 'package:doc_doc/core/theming/colors.dart';
import 'package:doc_doc/core/theming/styles.dart';
import 'package:doc_doc/features/home/data/models/home_specializations_response_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class DoctorSpecialityListViewItem extends StatelessWidget {
  final Specialization? specializationData;
  final int itemIndex;
  final int selectedIndex;
  const DoctorSpecialityListViewItem({
    super.key,
    this.specializationData,
    required this.itemIndex,
    required this.selectedIndex,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsetsDirectional.only(start: itemIndex == 0 ? 0 : 24.w),
      child: Column(
        children: [
          itemIndex == selectedIndex
              ? Container(
                  decoration: BoxDecoration(
                    border: Border.all(color: ColorsManager.darkBlue),
                    shape: BoxShape.circle,
                  ),
                  child: CircleAvatar(
                    radius: 28,
                    backgroundColor: ColorsManager.secondaryBlue,
                    child: SvgPicture.asset(
                      'assets/svgs/DoctorSpeciality.svg',
                      height: 42.h,
                      width: 42.w,
                    ),
                  ),
                )
              : CircleAvatar(
                  radius: 28,
                  backgroundColor: ColorsManager.secondaryBlue,
                  child: SvgPicture.asset(
                    'assets/svgs/DoctorSpeciality.svg',
                    height: 40.h,
                    width: 40.w,
                  ),
                ),
          verticalSpacing(8),
          Text(
            specializationData?.name ?? 'Specialization',
            style: itemIndex == selectedIndex
                ? TextStyles.font14DarkBlueMedium
                : TextStyles.font12DarkBlueRegular,
          ),
        ],
      ),
    );
  }
}
