import 'package:doc_doc/core/theming/colors.dart';
import 'package:doc_doc/core/theming/styles.dart';
import 'package:flutter/material.dart';

class RemembermeAndForgetpassword extends StatefulWidget {
  const RemembermeAndForgetpassword({super.key});

  @override
  State<RemembermeAndForgetpassword> createState() =>
      _RemembermeAndForgetpasswordState();
}

class _RemembermeAndForgetpasswordState
    extends State<RemembermeAndForgetpassword> {
  bool isChecked = false;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Checkbox(
          value: isChecked,
          onChanged: (value) {
            value = isChecked;
            setState(() {
              isChecked = !isChecked;
            });
          },
          activeColor: ColorsManager.mainBlue,
          hoverColor: ColorsManager.mainBlue,
          side: BorderSide(color: ColorsManager.mainBlue),
        ),
        Text("Remember me", style: TextStyles.font13greyregular),
        const Spacer(),
        GestureDetector(
          onTap: () {
            // Navigate to Forgot Password Screen
          },
          child: Text("Forgot Password?", style: TextStyles.font13Blueregular),
        ),
      ],
    );
  }
}
