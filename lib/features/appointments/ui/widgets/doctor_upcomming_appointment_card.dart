import 'package:doc_doc/core/helpers/spacing.dart';
import 'package:doc_doc/core/theming/colors.dart';
import 'package:doc_doc/core/theming/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DoctorAppointmentCard extends StatelessWidget {
  final String doctorName;
  final String appointmentType;
  final String date;
  final String time;
  final String doctorImage;
  final VoidCallback onCancel;
  final VoidCallback onReschedule;
  final VoidCallback onMessage;

  const DoctorAppointmentCard({
    super.key,
    required this.doctorName,
    required this.appointmentType,
    required this.date,
    required this.time,
    required this.doctorImage,
    required this.onCancel,
    required this.onReschedule,
    required this.onMessage,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(24),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.05),
            blurRadius: 20,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            // Doctor Info Section
            Row(
              children: [
                // Doctor Image
                Container(
                  width: 80.w,
                  height: 80.h,
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
                          size: 40,
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
                      Text(
                        doctorName,
                        style: TextStyles.font24BlackBold,
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ),
                      SizedBox(height: 8.h),
                      Text(
                        appointmentType,
                        style: TextStyles.font16DarkBluemedium,
                      ),
                    ],
                  ),
                ),
                // Message Icon
                Container(
                  width: 48.w,
                  height: 48.h,
                  decoration: BoxDecoration(
                    color: ColorsManager.secondaryBlue,
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: IconButton(
                    icon: Icon(
                      Icons.chat_bubble_outline,
                      color: ColorsManager.mainBlue,
                      size: 24,
                    ),
                    onPressed: onMessage,
                  ),
                ),
              ],
            ),
            verticalSpacing(24),
            // Date and Time Section
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(date, style: TextStyles.font16LightGreyMedium),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 12),
                  child: Text('|', style: TextStyles.font16LightGreyMedium),
                ),
                Text(time, style: TextStyles.font16LightGreyMedium),
              ],
            ),
            verticalSpacing(24),
            // Buttons Section
            Row(
              children: [
                // Cancel Button
                Expanded(
                  child: OutlinedButton(
                    onPressed: onCancel,
                    style: OutlinedButton.styleFrom(
                      foregroundColor: ColorsManager.mainBlue,
                      side: BorderSide(color: ColorsManager.mainBlue, width: 2),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(50),
                      ),
                      padding: const EdgeInsets.symmetric(vertical: 18),
                    ),
                    child: const Text(
                      'Cancel Appointment',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ),
                const SizedBox(width: 16),
                // Reschedule Button
                Expanded(
                  child: ElevatedButton(
                    onPressed: onReschedule,
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blue[600],
                      foregroundColor: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(50),
                      ),
                      padding: const EdgeInsets.symmetric(vertical: 18),
                      elevation: 0,
                    ),
                    child: const Text(
                      'Reschedule',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
