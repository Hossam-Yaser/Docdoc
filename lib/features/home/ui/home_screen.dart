import 'dart:developer';

import 'package:doc_doc/core/helpers/spacing.dart';
import 'package:doc_doc/features/home/data/models/home_specializations_response_model.dart';
import 'package:doc_doc/features/home/logic/home_cubit.dart';
import 'package:doc_doc/features/home/logic/home_states.dart';
import 'package:doc_doc/features/home/ui/widgets/doctors_blue_container.dart';
import 'package:doc_doc/features/home/ui/widgets/doctors_list_view.dart';
import 'package:doc_doc/features/home/ui/widgets/doctors_speciality_list_view.dart';
import 'package:doc_doc/features/home/ui/widgets/doctors_speciality_see_all.dart';
import 'package:doc_doc/features/home/ui/widgets/home_top_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

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
              BlocBuilder<HomeCubit, HomeStates>(
                buildWhen: (previous, current) =>
                    current is Specializationloading ||
                    current is Specializationsuccess ||
                    current is Specializationerror,
                builder: (context, state) {
                  return state.maybeWhen(
                    initial: () {
                      log("Initial");
                      return const SizedBox(
                        height: 100,
                        child: Center(child: CircularProgressIndicator()),
                      );
                    },
                    specializationloading: () {
                      log("Loading");
                      return const SizedBox(
                        height: 100,
                        child: Center(child: CircularProgressIndicator()),
                      );
                    },
                    specializationSuccess: (specializationSuccess) {
                      var response = specializationSuccess.data;
                      log("Success");
                      return Expanded(
                        child: Column(
                          children: [
                            DoctorsSpecialityListView(specialization: response),
                            verticalSpacing(8),
                            const DoctorsListView(),
                          ],
                        ),
                      );
                    },
                    specializationerror: (errorHandler) {
                      log("Failed");
                      return SizedBox.shrink();
                    },
                    orElse: () => const SizedBox.shrink(),
                  );
                },
              ),

              // const DoctorsSpecialityListView(),
              // verticalSpacing(8),
              // const DoctorsListView(),
            ],
          ),
        ),
      ),
    );
  }
}
