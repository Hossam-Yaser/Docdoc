import 'package:doc_doc/core/helpers/constants.dart';
import 'package:doc_doc/core/helpers/extentions.dart';
import 'package:doc_doc/core/helpers/shared_prefrance.dart';
import 'package:doc_doc/core/routing/routes.dart';
import 'package:doc_doc/core/theming/colors.dart';
import 'package:doc_doc/core/theming/styles.dart';
import 'package:flutter/material.dart';

class GetstartedButton extends StatelessWidget {
  const GetstartedButton({super.key});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: ButtonStyle(
        backgroundColor: WidgetStateProperty.all(ColorsManager.mainBlue),
        tapTargetSize: MaterialTapTargetSize.shrinkWrap,
        minimumSize: WidgetStateProperty.all(Size(double.infinity, 52)),
        shape: WidgetStateProperty.all(
          RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
        ),
      ),

      onPressed: () async {
        Navigator.pushReplacementNamed(context, Routes.loginScreen);
        await SharedPrefHelper.setData(SharedPrefKeys.onboardingSeen, true);
      },

      child: Text('GetStarted', style: TextStyles.font16WhiteSemiBold),
    );
  }
}
