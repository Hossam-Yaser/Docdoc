import 'package:doc_doc/core/helpers/app_regex.dart';
import 'package:doc_doc/core/helpers/spacing.dart';
import 'package:doc_doc/core/theming/colors.dart';
import 'package:doc_doc/core/widgets/app_text_form_filed.dart';
import 'package:doc_doc/features/login/logic/cubit/login_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class EmailAndPassword extends StatefulWidget {
  const EmailAndPassword({super.key});

  @override
  State<EmailAndPassword> createState() => _EmailAndPasswordState();
}

class _EmailAndPasswordState extends State<EmailAndPassword> {
  final formKey = GlobalKey<FormState>();
  bool isObscureText = true;
  bool isChecked = false;
  late TextEditingController passwordController;

  @override
  void initState() {
    super.initState();
    passwordController = context.read<LoginCubit>().emailController;
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: context.read<LoginCubit>().formKey,
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
            controller: context.read<LoginCubit>().emailController,
          ),
          verticalSpacing(18),
          AppTextFormFiled(
            hintText: "Password",
            isObscureText: isObscureText,
            controller: context.read<LoginCubit>().passwordController,
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
          verticalSpacing(24),
        ],
      ),
    );
  }

  @override
  void dispose() {
    passwordController.dispose();
    super.dispose();
  }
}
