import 'dart:developer';

import 'package:doc_doc/core/helpers/app_regex.dart';
import 'package:doc_doc/core/helpers/spacing.dart';
import 'package:doc_doc/core/theming/colors.dart';
import 'package:doc_doc/core/theming/styles.dart';
import 'package:doc_doc/core/widgets/app_text_form_filed.dart';
import 'package:flutter/material.dart';
import 'package:flutter_intl_phone_field/flutter_intl_phone_field.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ReciveUserDataTextFields extends StatefulWidget {
  const ReciveUserDataTextFields({super.key});

  @override
  State<ReciveUserDataTextFields> createState() =>
      _ReciveUserDataTextFieldsState();
}

class _ReciveUserDataTextFieldsState extends State<ReciveUserDataTextFields> {
  final formKey = GlobalKey<FormState>();
  bool isObscureText = true;
  bool isChecked = false;
  // late TextEditingController passwordController;

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          AppTextFormFiled(
            hintText: "Email",
            validator: (value) {
              if (value == null ||
                  value.isEmpty ||
                  !AppRegex.isEmailValid(value)) {
                return "Please Enter A valid email";
              }
              return null;
            },
          ),
          verticalSpacing(18),
          AppTextFormFiled(
            hintText: "Password",
            isObscureText: isObscureText,

            suffixIcon: GestureDetector(
              onTap: () {
                setState(() {
                  isObscureText = !isObscureText;
                });
              },
              child: Icon(
                isObscureText ? Icons.visibility_off : Icons.visibility,
                color: isObscureText
                    ? ColorsManager.lightGrey
                    : ColorsManager.mainBlue,
              ),
            ),
            validator: (value) {
              if (value == null ||
                  value.isEmpty ||
                  !AppRegex.isPasswordValid(value)) {
                return "Please Enter A valid Password";
              }
              return null;
            },
          ),
          verticalSpacing(16),
          IntlPhoneField(
            decoration: InputDecoration(
              isDense: true,
              contentPadding: EdgeInsets.symmetric(
                horizontal: 20.w,
                vertical: 18.h,
              ),
              focusedBorder: OutlineInputBorder(
                borderSide: const BorderSide(
                  color: ColorsManager.mainBlue,
                  width: 1.3,
                ),
                borderRadius: BorderRadius.circular(16),
              ),
              focusedErrorBorder: OutlineInputBorder(
                borderSide: const BorderSide(color: Colors.red, width: 1.3),
                borderRadius: BorderRadius.circular(16),
              ),

              enabledBorder: OutlineInputBorder(
                borderSide: const BorderSide(
                  color: ColorsManager.lighterGrey,
                  width: 1.3,
                ),
                borderRadius: BorderRadius.circular(16),
              ),
              hintStyle: TextStyles.font14lightGreyregular,
              hintText: "Phone Number",

              filled: true,
              fillColor: ColorsManager.moreLighterGrey,
              errorBorder: OutlineInputBorder(
                borderSide: const BorderSide(color: Colors.red, width: 1.3),
                borderRadius: BorderRadius.circular(16),
              ),
            ),
            initialCountryCode: 'EG',

            onChanged: (phone) {
              log(phone.completeNumber);
            },
            validator: (phone) {
              if (phone == null ||
                  phone.number.isEmpty ||
                  phone.number.length < 10 ||
                  !AppRegex.isPhoneNumberValid(phone.number)) {
                return 'Please enter a valid phone number';
              }
              return null;
            },
          ),
        ],
      ),
    );
  }

  // @override
  // void dispose() {
  //   passwordController.dispose();
  //   super.dispose();
  // }
}
