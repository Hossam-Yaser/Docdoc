import 'package:doc_doc/core/helpers/spacing.dart';
import 'package:doc_doc/core/theming/colors.dart';
import 'package:doc_doc/core/theming/styles.dart';
import 'package:doc_doc/core/widgets/app_text_button.dart';
import 'package:doc_doc/features/all_speciality/ui/widgets/custom_app_bar.dart';
import 'package:doc_doc/features/doctor_details/ui/widgets/doctor_card.dart';
import 'package:doc_doc/features/doctor_details/ui/widgets/tab_bar_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DoctorDetails extends StatelessWidget {
  const DoctorDetails({super.key});

  @override
  Widget build(BuildContext context) {
    final args = ModalRoute.of(context)!.settings.arguments as Map?;
    final doctor = args?['doctorData'];
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            //App Bar
            verticalSpacing(16),
            CustomAppBar(title: doctor.name),
            verticalSpacing(32),
            // Doctor Info Section
            DoctorCard(doctor: doctor),

            // TabBar
            Expanded(child: TabBarWidget(doctor: doctor)),

            // TabBarView
          ],
        ),
      ),
      bottomNavigationBar: Padding(
        padding: EdgeInsets.symmetric(horizontal: 24.w, vertical: 24.h),
        child: AppTextButton(
          buttonText: "Make An Appointment",
          textStyle: TextStyles.font16WhiteSemiBold,
          onPressed: () {},
        ),
      ),
    );
  }
}
