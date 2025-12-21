import 'package:doc_doc/core/helpers/spacing.dart';
import 'package:doc_doc/core/theming/colors.dart';
import 'package:doc_doc/core/theming/styles.dart';
import 'package:doc_doc/features/appointments/ui/widgets/appointment_canceled_card.dart';
import 'package:doc_doc/features/appointments/ui/widgets/appointment_done_card.dart';
import 'package:doc_doc/features/appointments/ui/widgets/doctor_upcomming_appointment_card.dart';
import 'package:flutter/material.dart';

class AppointmentTapBar extends StatefulWidget {
  const AppointmentTapBar({super.key});

  @override
  State<AppointmentTapBar> createState() => _AppointmentTapBarState();
}

class _AppointmentTapBarState extends State<AppointmentTapBar>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        children: [
          // TabBar
          Container(
            decoration: BoxDecoration(
              border: Border(
                bottom: BorderSide(color: ColorsManager.lightGrey, width: 1),
              ),
            ),
            child: TabBar(
              controller: _tabController,
              labelColor: ColorsManager.mainBlue,
              unselectedLabelColor: ColorsManager.grey,
              labelStyle: TextStyles.font14BlueSemiBold,
              indicatorColor: ColorsManager.mainBlue,
              indicatorWeight: 3,
              tabs: const [
                Tab(text: 'Upcoming'),
                Tab(text: 'Completed'),
                Tab(text: 'Cancelled'),
              ],
            ),
          ),

          // TabBarView
          Expanded(
            child: TabBarView(
              controller: _tabController,
              children: [
                // Upcomming Tab
                ListView.builder(
                  itemCount: 4,
                  itemBuilder: (context, index) {
                    return DoctorAppointmentCard(
                      doctorName: 'doctorName',
                      appointmentType: 'General Medical Checkup',
                      date: 'Wed, 17 May',
                      time: '08.30 AM',
                      doctorImage: 'assets/images/onboarding_doctorImage.png',
                      onCancel: () {},
                      onReschedule: () {},
                      onMessage: () {},
                    );
                  },
                ),

                // Completed Tab
                ListView.builder(
                  itemCount: 4,
                  itemBuilder: (context, index) {
                    return AppointmentDoneCard(
                      status: 'Completed',
                      date: 'Wed, 17 May',
                      time: '08.30 AM',
                      doctorName: 'doctorName',
                      appointmentType: 'General Medical Checkup',
                      rating: 4.5,
                      reviewCount: 120,
                      doctorImage: 'assets/images/onboarding_doctorImage.png',
                      onMenuTap: () {},
                    );
                  },
                ),

                // Cancelled Tab
                ListView.builder(
                  itemCount: 4,
                  itemBuilder: (context, index) {
                    return AppointmentCanceledCard(
                      status: 'Cancelled',
                      date: 'Wed, 17 May',
                      time: '08.30 AM',
                      doctorName: 'doctorName',
                      appointmentType: 'General Medical Checkup',
                      rating: 4.5,
                      reviewCount: 120,
                      doctorImage: 'assets/images/onboarding_doctorImage.png',
                      onMenuTap: () {},
                    );
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
