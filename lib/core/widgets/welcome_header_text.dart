// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:doc_doc/core/helpers/spacing.dart';
import 'package:doc_doc/core/theming/styles.dart';

class WelcomeHeaderText extends StatelessWidget {
  final String mainTitle;
  final String? supTitle;
  const WelcomeHeaderText({super.key, required this.mainTitle, this.supTitle});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(mainTitle, style: TextStyles.font24BlueBold),
        verticalSpacing(8),
        Text(supTitle ?? "", style: TextStyles.font14Greyregular),
      ],
    );
  }
}
