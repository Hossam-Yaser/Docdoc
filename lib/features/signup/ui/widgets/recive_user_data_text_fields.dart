import 'package:doc_doc/core/helpers/app_regex.dart';
import 'package:doc_doc/core/helpers/spacing.dart';
import 'package:doc_doc/core/theming/colors.dart';
import 'package:doc_doc/core/widgets/app_text_form_filed.dart';
import 'package:doc_doc/features/signup/logic/signup_cubit.dart';
import 'package:doc_doc/features/signup/ui/widgets/phone_input_filed.dart';
import 'package:doc_doc/features/signup/ui/widgets/select_gender.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ReciveUserDataTextFields extends StatefulWidget {
  const ReciveUserDataTextFields({super.key});

  @override
  State<ReciveUserDataTextFields> createState() =>
      _ReciveUserDataTextFieldsState();
}

class _ReciveUserDataTextFieldsState extends State<ReciveUserDataTextFields> {
  bool isObscureText = true;
  bool isChecked = false;

  // late TextEditingController passwordController;

  @override
  Widget build(BuildContext context) {
    return Form(
      key: context.read<SignupCubit>().formKey,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          AppTextFormFiled(
            controller: context.read<SignupCubit>().nameController,
            hintText: "Name",
            validator: (value) {
              if (value == null || value.isEmpty) {
                return "Please Enter Your Name";
              }
              return null;
            },
          ),
          verticalSpacing(18),
          AppTextFormFiled(
            controller: context.read<SignupCubit>().emailController,
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
            controller: context.read<SignupCubit>().passwordController,
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
                return "Please Enter A valid Password(Min 8 characters) \n Must contain a-z, A-Z, 0-9, {#@\$!%*?&}";
              }
              return null;
            },
          ),
          verticalSpacing(18),
          AppTextFormFiled(
            hintText: "Confirm Password",
            isObscureText: isObscureText,
            controller: context
                .read<SignupCubit>()
                .passwordConfirmationController,
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
                  !AppRegex.isPasswordValid(value) ||
                  value !=
                      (context.read<SignupCubit>().passwordController.text)) {
                return "Passwords do not match";
              }
              return null;
            },
          ),
          verticalSpacing(16),
          PhoneInputField(), //phone number field
          verticalSpacing(18),
          SelectGender(), //gender selection field
        ],
      ),
    );
  }
}
