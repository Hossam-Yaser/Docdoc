// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:doc_doc/core/helpers/spacing.dart';
import 'package:doc_doc/core/theming/colors.dart';
import 'package:doc_doc/core/theming/styles.dart';
import 'package:doc_doc/features/doctor_details/ui/widgets/reviewer_card.dart';
import 'package:doc_doc/features/home/data/models/home_specializations_response_model.dart';
import 'package:flutter/material.dart';

class TabBarWidget extends StatefulWidget {
  final Doctor doctor;
  const TabBarWidget({super.key, required this.doctor});

  @override
  State<TabBarWidget> createState() => _TabBarWidgetState();
}

class _TabBarWidgetState extends State<TabBarWidget>
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
    return Column(
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
              Tab(text: 'About'),
              Tab(text: 'Location'),
              Tab(text: 'Reviews'),
            ],
          ),
        ),

        // TabBarView
        Expanded(
          child: TabBarView(
            controller: _tabController,
            children: [
              // About Tab
              SingleChildScrollView(
                padding: const EdgeInsets.all(16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('About me', style: TextStyles.font18DarkBlueBold),
                    verticalSpacing(12),
                    Text(
                      widget.doctor.description ??
                          'Dr. Jenny Watson is the top most Immunologists specialist in Christ Hospital at London. She achieved several awards for her wonderful contribution in medical field. She is available for private consultation.',
                      style: TextStyles.font14lightGreyregular,
                    ),
                    verticalSpacing(24),
                    Text('Working Time', style: TextStyles.font18DarkBlueBold),
                    verticalSpacing(12),
                    Text(
                      "Start Time: ${widget.doctor.startTime} - End Time: ${widget.doctor.endTime}",
                      style: TextStyles.font14lightGreyregular,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),
                    verticalSpacing(24),
                    Text('STR', style: TextStyles.font18DarkBlueBold),
                    verticalSpacing(12),
                    Text(
                      '4726482464',
                      style: TextStyles.font14lightGreyregular,
                    ),
                    verticalSpacing(24),
                    Text(
                      widget.doctor.degree ?? "",
                      style: TextStyles.font18DarkBlueBold,
                    ),
                    verticalSpacing(12),
                    Text(
                      widget.doctor.specialization?.name ??
                          'RSPAD Gatot Soebroto',
                      style: TextStyles.font14DarkBlueMedium,
                    ),
                    verticalSpacing(4),
                    Text(
                      widget.doctor.address ?? '2017 - sekarang',
                      style: TextStyles.font14lightGreyregular,
                    ),
                  ],
                ),
              ),

              // Location Tab
              Padding(
                padding: const EdgeInsets.all(16),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Practice Place',
                      style: TextStyles.font18DarkBlueBold,
                    ),
                    verticalSpacing(12),
                    Text(
                      widget.doctor.address ??
                          'Dr. Jenny Watson is the top most Immunologists specialist in Christ Hospital at London. She achieved several awards for her wonderful contribution in medical field. She is available for private consultation.',
                      style: TextStyles.font14lightGreyregular,
                    ),
                    verticalSpacing(18),
                    Text('Location Map', style: TextStyles.font18DarkBlueBold),
                    verticalSpacing(12),
                    Expanded(child: Image.asset('assets/images/Map.png')),
                  ],
                ),
              ),

              // Reviews Tab
              Container(
                padding: EdgeInsets.all(16),
                height: double.infinity,
                width: double.infinity,
                child: ListView.builder(
                  itemCount: 4,
                  itemBuilder: (context, index) {
                    return ReviewCard();
                  },
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
