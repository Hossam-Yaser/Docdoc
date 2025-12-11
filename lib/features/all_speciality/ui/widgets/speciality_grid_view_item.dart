import 'package:doc_doc/core/helpers/spacing.dart';
import 'package:doc_doc/core/theming/colors.dart';
import 'package:doc_doc/core/theming/styles.dart';
import 'package:doc_doc/features/home/data/models/home_specializations_response_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class SpecialityGridViewItem extends StatelessWidget {
  final Specialization specializationData;

  const SpecialityGridViewItem({super.key, required this.specializationData});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CircleAvatar(
          radius: 40,
          backgroundColor: ColorsManager.secondaryBlue,
          child: SvgPicture.asset(
            'assets/svgs/DoctorSpeciality.svg',
            height: 40.h,
            width: 40.w,
          ),
        ),
        verticalSpacing(8),
        SizedBox(
          width: 80.w,
          child: Text(
            specializationData.name ?? 'Specialization',
            style: TextStyles.font14DarkBlueMedium.copyWith(
              fontSize: 12.sp,
            ), // Smaller font
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            textAlign: TextAlign.center,
          ),
        ),
      ],
    );
  }
}
