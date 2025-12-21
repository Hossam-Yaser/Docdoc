import 'dart:developer';

import 'package:doc_doc/core/helpers/constants.dart';
import 'package:doc_doc/core/helpers/extentions.dart';
import 'package:doc_doc/core/helpers/spacing.dart';
import 'package:doc_doc/core/routing/routes.dart';
import 'package:doc_doc/core/theming/colors.dart';
import 'package:doc_doc/core/theming/styles.dart';
import 'package:doc_doc/core/widgets/app_text_button.dart';
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
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

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
          backgroundColor: Colors.white,
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 32.h),
            child: Column(
              children: [
                Container(
                  padding: EdgeInsets.symmetric(vertical: 16.h),
                  color: Colors.white,
                  child: Row(
                    children: [
                      Text('$userName', style: TextStyles.font18DarkBlueBold),
                      const Spacer(),
                      CircleAvatar(
                        backgroundColor: ColorsManager.lightGrey,
                        child: SvgPicture.asset(
                          'assets/svgs/home_profileImange.svg',
                          height: 64,
                          width: 64,
                        ),
                      ),
                    ],
                  ),
                ),

                // Scrollable drawer items
                Expanded(
                  child: ListView(
                    padding: EdgeInsets.zero,
                    children: [
                      AppTextButton(
                        buttonText: 'My Appointment  📅',
                        backgroundColor: ColorsManager.secondaryBlue,
                        textStyle: TextStyles.font18DarkBlueSemiBold,
                        onPressed: () {
                          context.pushNamed(Routes.appointmentsScreen);
                        },
                      ),
                    ],
                  ),
                ),

                AppTextButton(
                  buttonText: 'Log out   ➜]',
                  backgroundColor: ColorsManager.secondaryBlue,
                  textStyle: TextStyles.font18DarkBlueSemiBold,
                  onPressed: () {
                    context.read<HomeCubit>().emitLogoutStates();
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
