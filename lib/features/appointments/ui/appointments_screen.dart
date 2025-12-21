import 'package:doc_doc/core/helpers/spacing.dart';
import 'package:doc_doc/features/all_speciality/ui/widgets/custom_app_bar.dart';
import 'package:doc_doc/features/appointments/ui/widgets/appointment_tap_bar.dart';
import 'package:doc_doc/features/appointments/ui/widgets/appointment_top_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppointmentsScreen extends StatelessWidget {
  const AppointmentsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 16.h),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              //App Bar
              verticalSpacing(16),
              AppointmentTopBar(),
              verticalSpacing(32),
              AppointmentTapBar(),
            ],
          ),
        ),
      ),
    );
  }
}
