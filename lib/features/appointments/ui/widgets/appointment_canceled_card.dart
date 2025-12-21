import 'package:doc_doc/core/helpers/spacing.dart';
import 'package:doc_doc/core/theming/colors.dart';
import 'package:doc_doc/core/theming/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppointmentCanceledCard extends StatelessWidget {
  final String status;
  final String date;
  final String time;
  final String doctorName;
  final String appointmentType;
  final double rating;
  final int reviewCount;
  final String doctorImage;
  final VoidCallback onMenuTap;

  const AppointmentCanceledCard({
    super.key,
    required this.status,
    required this.date,
    required this.time,
    required this.doctorName,
    required this.appointmentType,
    required this.rating,
    required this.reviewCount,
    required this.doctorImage,
    required this.onMenuTap,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 8.w, vertical: 8.h),
      child: Container(
        decoration: BoxDecoration(
          color: ColorsManager.secondaryBlue,
          borderRadius: BorderRadius.circular(24),
          boxShadow: [
            BoxShadow(
              color: ColorsManager.lighterGrey,
              blurRadius: 20,
              offset: const Offset(0, 4),
            ),
          ],
        ),
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Status and Menu Row
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    status,
                    style: status == 'Completed'
                        ? TextStyles.font24GreenMedium
                        : TextStyles.font24RedMedium,
                  ),
                  IconButton(
                    icon: Icon(
                      Icons.more_vert,
                      color: ColorsManager.lightGrey,
                      size: 28,
                    ),
                    onPressed: onMenuTap,
                    padding: EdgeInsets.zero,
                    constraints: const BoxConstraints(),
                  ),
                ],
              ),
              verticalSpacing(4),
              // Date and Time
              Row(
                children: [
                  Text(date, style: TextStyles.font16LightGreyMedium),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 12),
                    child: Text('|', style: TextStyles.font16LightGreyMedium),
                  ),
                  Text(time, style: TextStyles.font16LightGreyMedium),
                ],
              ),
              verticalSpacing(8),
              // Divider
              Divider(color: ColorsManager.lightGrey, thickness: 1),
              verticalSpacing(8),
              // Doctor Info Section
              Row(
                children: [
                  // Doctor Image
                  Container(
                    width: 90.w,
                    height: 90.h,
                    decoration: BoxDecoration(
                      color: ColorsManager.lightGrey,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: Image.asset(
                        doctorImage,
                        fit: BoxFit.cover,
                        errorBuilder: (context, error, stackTrace) {
                          return Icon(
                            Icons.person,
                            size: 45,
                            color: ColorsManager.grey,
                          );
                        },
                      ),
                    ),
                  ),
                  horizontalSpacing(16),
                  // Doctor Details
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(doctorName, style: TextStyles.font24BlackBold),
                        verticalSpacing(8),
                        Text(
                          appointmentType,
                          style: TextStyles.font16DarkBluemedium,
                        ),
                        verticalSpacing(8),
                        // Rating Section
                        Row(
                          children: [
                            const Icon(
                              Icons.star,
                              color: Colors.amber,
                              size: 28,
                            ),
                            horizontalSpacing(4),
                            Text(
                              rating.toStringAsFixed(1),
                              style: TextStyles.font16DarkBluemedium,
                            ),
                            horizontalSpacing(4),
                            Text(
                              '($reviewCount reviews)',
                              style: TextStyles.font16LightGreyMedium,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
