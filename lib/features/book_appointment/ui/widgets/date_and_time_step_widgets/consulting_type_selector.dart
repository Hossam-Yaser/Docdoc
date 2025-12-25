import 'package:doc_doc/core/helpers/spacing.dart';
import 'package:doc_doc/core/theming/colors.dart';
import 'package:doc_doc/core/theming/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class ConsultationTypeSelector extends StatefulWidget {
  const ConsultationTypeSelector({super.key});

  @override
  State<ConsultationTypeSelector> createState() =>
      _ConsultationTypeSelectorState();
}

class _ConsultationTypeSelectorState extends State<ConsultationTypeSelector> {
  String selectedType = 'In Person';

  final List<ConsultationType> consultationTypes = [
    ConsultationType(
      icon: SvgPicture.asset('assets/svgs/inPerson.svg'),
      label: 'In Person',
      color: ColorsManager.mainBlue,
    ),
    ConsultationType(
      icon: SvgPicture.asset('assets/svgs/video.svg'),
      label: 'Video Call',
      color: Color(0xFF4CAF50),
    ),
    ConsultationType(
      icon: SvgPicture.asset('assets/svgs/call.svg'),
      label: 'Phone Call',
      color: Color(0xFFE57373),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return RadioGroup<String>(
      groupValue: selectedType,
      onChanged: (String? value) {
        if (value == null) return;
        setState(() {
          selectedType = value;
        });
      },
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 8.w),
        child: Column(
          children: consultationTypes.map((type) {
            return Container(
              margin: const EdgeInsets.only(bottom: 1),
              decoration: BoxDecoration(
                color: Colors.white,
                border: Border(
                  bottom: BorderSide(
                    color: ColorsManager.lighterGrey,
                    width: 1,
                  ),
                ),
              ),
              child: RadioListTile<String>(
                value: type.label,
                activeColor: type.color,
                controlAffinity: ListTileControlAffinity.trailing,
                contentPadding: const EdgeInsets.symmetric(
                  horizontal: 16,
                  vertical: 8,
                ),
                title: Row(
                  children: [
                    Container(
                      width: 40,
                      height: 40,
                      decoration: BoxDecoration(
                        color: type.color.withAlpha(20),
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: type.icon,
                    ),
                    horizontalSpacing(16),
                    Text(type.label, style: TextStyles.font16GreyMedium),
                  ],
                ),
              ),
            );
          }).toList(),
        ),
      ),
    );
  }
}

class ConsultationType {
  final SvgPicture icon;
  final String label;
  final Color color;

  ConsultationType({
    required this.icon,
    required this.label,
    required this.color,
  });
}
