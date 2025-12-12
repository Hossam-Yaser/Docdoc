// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:doc_doc/core/theming/colors.dart';
import 'package:doc_doc/core/theming/styles.dart';
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
              bottom: BorderSide(color: Colors.grey[300]!, width: 1),
            ),
          ),
          child: TabBar(
            controller: _tabController,
            labelColor: ColorsManager.mainBlue,
            unselectedLabelColor: Colors.grey,
            labelStyle: TextStyles.font14BlueSemiBold,
            indicatorColor: Colors.blue,
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
                    const SizedBox(height: 12),
                    Text(
                      widget.doctor.description ??
                          'Dr. Jenny Watson is the top most Immunologists specialist in Christ Hospital at London. She achieved several awards for her wonderful contribution in medical field. She is available for private consultation.',
                      style: TextStyle(
                        fontSize: 14,
                        color: Colors.grey[700],
                        height: 1.5,
                      ),
                    ),
                    const SizedBox(height: 24),
                    Text('Working Time', style: TextStyles.font18DarkBlueBold),
                    const SizedBox(height: 12),
                    Text(
                      "Start Time: ${widget.doctor.startTime} - End Time: ${widget.doctor.endTime}",
                      style: TextStyles.font14lightGreyregular,
                    ),
                    const SizedBox(height: 24),
                    Text('STR', style: TextStyles.font18DarkBlueBold),
                    const SizedBox(height: 12),
                    Text(
                      '4726482464',
                      style: TextStyle(fontSize: 14, color: Colors.grey[700]),
                    ),
                    const SizedBox(height: 24),
                    Text(
                      'Pengalaman Praktik',
                      style: TextStyles.font18DarkBlueBold,
                    ),
                    const SizedBox(height: 12),
                    Text(
                      'RSPAD Gatot Soebroto',
                      style: TextStyle(
                        fontSize: 14,
                        color: Colors.grey[800],
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    const SizedBox(height: 4),
                    Text(
                      '2017 - sekarang',
                      style: TextStyle(fontSize: 14, color: Colors.grey[600]),
                    ),
                  ],
                ),
              ),

              // Location Tab
              const Center(child: Text('Location Content')),

              // Reviews Tab
              const Center(child: Text('Reviews Content')),
            ],
          ),
        ),
      ],
    );
  }
}
