import 'package:cached_network_image/cached_network_image.dart';
import 'package:doc_doc/core/helpers/extentions.dart';
import 'package:doc_doc/core/helpers/spacing.dart';
import 'package:doc_doc/core/routing/routes.dart';
import 'package:doc_doc/core/theming/styles.dart';
import 'package:doc_doc/features/home/data/models/home_specializations_response_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DoctorsListViewItem extends StatelessWidget {
  final Doctor? doctor;
  const DoctorsListViewItem({super.key, required this.doctor});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        context.pushNamed(
          Routes.doctorDetails,
          arguments: {'doctorData': doctor},
        );
      },
      child: Container(
        margin: EdgeInsets.only(bottom: 16.h),
        child: Row(
          children: [
            ClipRRect(
              borderRadius: BorderRadiusGeometry.circular(12),
              child: Image.network(
                doctor?.photo ?? "",
                width: 110.w,
                height: 120.h,
                fit: BoxFit.cover,
                errorBuilder: (context, error, stackTrace) {
                  return Image.asset(
                    "assets/images/onboarding_doctorImage.png",
                    width: 110.w,
                    height: 120.h,
                    fit: BoxFit.cover,
                  );
                },
              ),
            ),
            horizontalSpacing(16),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    doctor?.name ?? 'Name',
                    style: TextStyles.font18DarkBlueBold,
                    overflow: TextOverflow.ellipsis,
                  ),
                  verticalSpacing(5),
                  Text(
                    "${doctor?.degree} | ${doctor?.phone}",
                    style: TextStyles.font12GreyMeduim,
                    overflow: TextOverflow.ellipsis,
                  ),
                  verticalSpacing(5),
                  Text(
                    doctor?.email ?? "Email",
                    style: TextStyles.font12GreyMeduim,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
