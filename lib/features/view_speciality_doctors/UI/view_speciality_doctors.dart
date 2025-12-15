// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:doc_doc/core/helpers/spacing.dart';
import 'package:doc_doc/core/widgets/doctors/doctors_list_view.dart';
import 'package:doc_doc/features/all_speciality/ui/widgets/custom_app_bar.dart';
import 'package:doc_doc/features/home/data/models/home_specializations_response_model.dart';

class ViewSpecialityDoctors extends StatelessWidget {
  const ViewSpecialityDoctors({super.key});

  @override
  Widget build(BuildContext context) {
    final args = ModalRoute.of(context)!.settings.arguments as Map?;
    final doctorsList = args?['doctorsList'] as List<Doctor>?;
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 16.h),
          child: Column(
            children: [
              // Custom App Bar
              CustomAppBar(),
              verticalSpacing(48),
              DoctorsListView(doctorsList: doctorsList),
            ],
          ),
        ),
      ),
    );
  }
}
