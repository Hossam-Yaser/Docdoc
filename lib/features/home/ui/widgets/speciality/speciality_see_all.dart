import 'package:doc_doc/core/helpers/extentions.dart';
import 'package:doc_doc/core/routing/routes.dart';
import 'package:doc_doc/core/theming/styles.dart';
import 'package:flutter/material.dart';

class DoctorsSpecialitySeeAll extends StatelessWidget {
  const DoctorsSpecialitySeeAll({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text('Doctors Speciality', style: TextStyles.font18DarkBlueSemiBold),
        Spacer(),
        GestureDetector(
          onTap: () {
            context.pushNamed(Routes.allSpecialityScreen);
          },
          child: Text('See All', style: TextStyles.font12BlueRegular),
        ),
      ],
    );
  }
}
