import 'package:doc_doc/core/helpers/spacing.dart';
import 'package:doc_doc/core/theming/styles.dart';
import 'package:doc_doc/core/widgets/app_text_button.dart';
import 'package:doc_doc/core/widgets/welcome_header_text.dart';
import 'package:doc_doc/features/login/data/models/login_request_body.dart';
import 'package:doc_doc/features/login/logic/cubit/login_cubit.dart';
import 'package:doc_doc/features/login/ui/widgets/dont_have_account_text.dart';
import 'package:doc_doc/features/login/ui/widgets/email_and_password.dart';
import 'package:doc_doc/features/login/ui/widgets/login_icons_widgets.dart';
import 'package:doc_doc/features/login/ui/widgets/rememberme_and_forgetpassword.dart';
import 'package:doc_doc/core/widgets/terms_and_conditions_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
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
                  mainTitle: "Welcome Back!",
                  supTitle:
                      "We're excited to have you back, can't wait to see what you've been up to since you last logged in.",
                ),
                verticalSpacing(36),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    EmailAndPassword(),

                    RemembermeAndForgetpassword(),
                    verticalSpacing(30),
                    AppTextButton(
                      buttonText: "Login",
                      textStyle: TextStyles.font16WhiteSemiBold,
                      onPressed: () {
                        validateThenDoLogin(context);
                      },
                    ),
                    verticalSpacing(46),

                    LoginIconsWidgets(),
                    verticalSpacing(32),
                    TermsAndConditionsText(),
                    verticalSpacing(24),
                    DontHaveAccountText(),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void validateThenDoLogin(BuildContext context) {
    if (context.read<LoginCubit>().formKey.currentState!.validate()) {
      context.read<LoginCubit>().emitLoginStates(
        LoginRequestBody(
          email: context.read<LoginCubit>().emailController.text,
          password: context.read<LoginCubit>().passwordController.text,
        ),
      );
    }
  }
}
