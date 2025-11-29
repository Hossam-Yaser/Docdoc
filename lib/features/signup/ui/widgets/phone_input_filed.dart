import 'package:doc_doc/core/helpers/app_regex.dart';
import 'package:doc_doc/core/theming/colors.dart';
import 'package:doc_doc/core/theming/styles.dart';
import 'package:doc_doc/features/signup/logic/signup_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_intl_phone_field/flutter_intl_phone_field.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PhoneInputField extends StatelessWidget {
  const PhoneInputField({super.key});

  @override
  Widget build(BuildContext context) {
    return IntlPhoneField(
      controller: context.read<SignupCubit>().phoneController,
      autovalidateMode: AutovalidateMode.onUserInteraction,
      decoration: InputDecoration(
        isDense: true,
        contentPadding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 18.h),
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
      validator: (phone) {
        if (phone == null ||
            phone.number.isEmpty ||
            phone.number.length < 10 ||
            !AppRegex.isPhoneNumberValid(phone.number)) {
          return 'Please enter a valid phone number';
        }
        return null;
      },
      onChanged: (phone) {},
    );
  }
}
