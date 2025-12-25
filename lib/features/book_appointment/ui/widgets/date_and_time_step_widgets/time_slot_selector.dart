import 'package:doc_doc/core/theming/colors.dart';
import 'package:doc_doc/core/theming/styles.dart';
import 'package:flutter/material.dart';

class TimeSlotSelector extends StatefulWidget {
  const TimeSlotSelector({super.key});

  @override
  State<TimeSlotSelector> createState() => _TimeSlotSelectorState();
}

class _TimeSlotSelectorState extends State<TimeSlotSelector> {
  String? selectedTime;

  final List<String> timeSlots = [
    '08.00 AM',
    '08.30 AM',
    '09.00 AM',
    '09.30 AM',
    '10.00 AM',
    '11.00 AM',
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      child: GridView.builder(
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 12,
          mainAxisSpacing: 12,
          childAspectRatio: 2.5,
        ),
        itemCount: timeSlots.length,
        itemBuilder: (context, index) {
          final time = timeSlots[index];
          final isSelected = selectedTime == time;

          return GestureDetector(
            onTap: () {
              setState(() {
                selectedTime = time;
              });
            },
            child: Container(
              decoration: BoxDecoration(
                color: isSelected
                    ? ColorsManager.mainBlue
                    : ColorsManager.secondaryBlue,
                borderRadius: BorderRadius.circular(12),
              ),
              alignment: Alignment.center,
              child: Text(
                time,
                style: TextStyles.font15BlueMedium.copyWith(
                  color: isSelected
                      ? ColorsManager.moreLighterGrey
                      : ColorsManager.grey,
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
