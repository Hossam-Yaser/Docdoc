import 'package:doc_doc/core/theming/colors.dart';
import 'package:doc_doc/core/theming/styles.dart';
import 'package:doc_doc/features/all_speciality/ui/widgets/custom_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AllSpecialityScreen extends StatelessWidget {
  const AllSpecialityScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 16.h),
          child: Column(
            children: [
              // Custom App Bar
              CustomAppBar(),
              SizedBox(height: 24.h),
            ],
          ),
        ),
      ),
    );
  }
}
