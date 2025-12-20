import 'dart:developer';

import 'package:doc_doc/core/helpers/extentions.dart';
import 'package:doc_doc/core/helpers/spacing.dart';
import 'package:doc_doc/core/routing/routes.dart';
import 'package:doc_doc/core/theming/colors.dart';
import 'package:doc_doc/features/home/data/models/home_specializations_response_model.dart';
import 'package:doc_doc/features/home/logic/home_cubit.dart';
import 'package:doc_doc/features/home/logic/home_states.dart';
import 'package:doc_doc/features/home/ui/widgets/doctors/doctors_bloc_builder.dart';
import 'package:doc_doc/features/home/ui/widgets/doctors_blue_container.dart';
import 'package:doc_doc/core/widgets/doctors/doctors_list_view.dart';
import 'package:doc_doc/features/home/ui/widgets/speciality/speciality_bloc_builder.dart';
import 'package:doc_doc/features/home/ui/widgets/speciality/speciality_list_view.dart';
import 'package:doc_doc/features/home/ui/widgets/speciality/speciality_see_all.dart';
import 'package:doc_doc/features/home/ui/widgets/home_top_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Container(
          width: double.infinity,
          margin: const EdgeInsetsGeometry.fromLTRB(20, 16, 20, 0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              HomeTopBar(scaffoldKey: _scaffoldKey),
              const DoctorsBlueContainer(),
              verticalSpacing(16),
              const DoctorsSpecialitySeeAll(),
              verticalSpacing(8),
              SpecializationsBlocBuilder(),
              DoctorsBlocBuilder(),
            ],
          ),
        ),
      ),
      drawer: BlocListener<HomeCubit, HomeStates>(
        listener: (context, state) {
          if (state is LogoutSuccess) {
            ScaffoldMessenger.of(
              context,
            ).showSnackBar(SnackBar(content: Text("Logout Success ✅")));
            context.pushReplacementNamed(Routes.loginScreen);
          } else if (state is LogoutError) {
            // Optional: show a snackbar or toast
            ScaffoldMessenger.of(
              context,
            ).showSnackBar(SnackBar(content: Text("Logout failed")));
          }
        },
        child: Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
            children: [
              const DrawerHeader(
                decoration: BoxDecoration(color: ColorsManager.secondaryBlue),
                child: Text(''),
              ),
              FloatingActionButton(
                onPressed: () {
                  context.read<HomeCubit>().emitLogoutStates();
                },
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Text('Log out'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
