import 'package:doc_doc/core/helpers/spacing.dart';
import 'package:doc_doc/core/theming/colors.dart';
import 'package:doc_doc/core/theming/styles.dart';
import 'package:flutter/material.dart';

class BuildInfoCard extends StatelessWidget {
  const BuildInfoCard({
    super.key,
    this.icon,
    this.iconColor = ColorsManager.mainBlue,
    this.title = '',
    this.subtitle = '',
  });
  final IconData? icon;
  final Color iconColor;
  final String title;
  final String subtitle;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: ColorsManager.moreLighterGrey,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Row(
        children: [
          Container(
            padding: const EdgeInsets.all(12),
            decoration: BoxDecoration(
              color: iconColor.withAlpha(1),
              borderRadius: BorderRadius.circular(12),
            ),
            child: Icon(icon, color: iconColor, size: 24),
          ),
          horizontalSpacing(16),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(title, style: TextStyles.font16DarkBluemedium),
                verticalSpacing(4),
                Text(subtitle, style: TextStyles.font14Greyregular),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
