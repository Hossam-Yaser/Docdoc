import 'package:doc_doc/core/helpers/spacing.dart';
import 'package:doc_doc/core/theming/colors.dart';
import 'package:doc_doc/core/theming/styles.dart';
import 'package:doc_doc/core/widgets/app_text_button.dart';
import 'package:doc_doc/core/widgets/app_text_form_filed.dart';
import 'package:doc_doc/features/login/ui/widgets/dont_have_account_text.dart';
import 'package:doc_doc/features/login/ui/widgets/login_icons_widgets.dart';
import 'package:doc_doc/features/login/ui/widgets/terms_and_conditions_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final formKey = GlobalKey<FormState>();
  bool isObscureText = true;
  bool isChecked = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 30.w, vertical: 30.h),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Text("Welcome Back", style: TextStyles.font24BlueBold),
                verticalSpacing(8),
                Text(
                  "We're excited to have you back, can't wait to see what you've been up to since you last logged in.",
                  style: TextStyles.font14Greyregular,
                ),
                verticalSpacing(36),
                Form(
                  key: formKey,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      AppTextFormFiled(
                        hintText: "Email",
                        validator: (value) {},
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
                            isObscureText
                                ? Icons.visibility_off
                                : Icons.visibility,
                            color: isObscureText
                                ? ColorsManager.lightGrey
                                : ColorsManager.mainBlue,
                          ),
                        ),
                        validator: (value) {},
                      ),
                      verticalSpacing(24),
                      Row(
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
                          Text(
                            "Remember me",
                            style: TextStyles.font13greyregular,
                          ),
                          const Spacer(),
                          GestureDetector(
                            onTap: () {
                              // Navigate to Forgot Password Screen
                            },
                            child: Text(
                              "Forgot Password?",
                              style: TextStyles.font13Blueregular,
                            ),
                          ),
                        ],
                      ),
                      verticalSpacing(30),
                      AppTextButton(
                        buttonText: "Login",
                        textStyle: TextStyles.font16WhiteSemiBold,
                        onPressed: () {},
                      ),
                      verticalSpacing(20),
                      Row(
                        children: [
                          Expanded(child: Divider()),
                          Padding(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 8.0,
                            ),
                            child: Text(
                              "OR Sign in with",
                              style: TextStyles.font13greyregular,
                            ),
                          ),
                          Expanded(child: Divider()),
                        ],
                      ),
                      verticalSpacing(32),
                      LoginIconsWidgets(),
                      verticalSpacing(32),
                      DontHaveAccountText(),
                      verticalSpacing(24),
                      TermsAndConditionsText(),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
