import 'package:doc_doc/core/helpers/spacing.dart';
import 'package:doc_doc/core/theming/styles.dart';
import 'package:doc_doc/core/widgets/app_text_button.dart';
import 'package:doc_doc/core/widgets/welcome_header_text.dart';
import 'package:doc_doc/core/widgets/terms_and_conditions_text.dart';
import 'package:doc_doc/features/signup/logic/signup_cubit.dart';
import 'package:doc_doc/features/signup/ui/widgets/already_have_account.dart';
import 'package:doc_doc/features/signup/ui/widgets/recive_user_data_text_fields.dart';
import 'package:doc_doc/features/signup/ui/widgets/signup_bloc_listener.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 30.w, vertical: 30.h),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                WelcomeHeaderText(
                  mainTitle: "Create Account",
                  supTitle:
                      "Sign up now and start exploring all that our app has to offer. We're excited to welcome you to our community!",
                ),
                verticalSpacing(36),
                ReciveUserDataTextFields(),
                verticalSpacing(30),
                AppTextButton(
                  buttonText: "Sign Up",
                  textStyle: TextStyles.font16WhiteSemiBold,
                  onPressed: () {
                    validateThenDoSignUp(context);
                  },
                ),
                verticalSpacing(46),
                TermsAndConditionsText(),
                verticalSpacing(24),
                AlreadyHaveAccount(),
                SignupBlocListener(),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void validateThenDoSignUp(BuildContext context) {
    if (context.read<SignupCubit>().formKey.currentState!.validate()) {
      context.read<SignupCubit>().emitSignupStates();
    }
  }
}
