import 'package:doc_doc/core/helpers/spacing.dart';
import 'package:doc_doc/features/home/ui/widgets/doctors_blue_container.dart';
import 'package:doc_doc/features/home/ui/widgets/doctors_list_view.dart';
import 'package:doc_doc/features/home/ui/widgets/doctors_speciality_list_view.dart';
import 'package:doc_doc/features/home/ui/widgets/doctors_speciality_see_all.dart';
import 'package:doc_doc/features/home/ui/widgets/home_top_bar.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Container(
          width: double.infinity,
          margin: const EdgeInsetsGeometry.fromLTRB(20, 16, 20, 28),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const HomeTopBar(),
              const DoctorsBlueContainer(),
              verticalSpacing(16),
              const DoctorsSpecialitySeeAll(),
              const DoctorsSpecialityListView(),
              verticalSpacing(8),
              const DoctorsListView(),
            ],
          ),
        ),
      ),
    );
  }
}
