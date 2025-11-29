import 'package:doc_doc/core/theming/colors.dart';
import 'package:doc_doc/core/theming/styles.dart';
import 'package:doc_doc/features/signup/logic/signup_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SelectGender extends StatefulWidget {
  const SelectGender({super.key});

  @override
  State<SelectGender> createState() => _SelectGenderState();
}

class _SelectGenderState extends State<SelectGender> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 14),
          child: Text("Gender", style: TextStyles.font16DarkBluemedium),
        ),
        DropdownMenu(
          menuStyle: MenuStyle(
            padding: WidgetStateProperty.all(
              EdgeInsets.symmetric(horizontal: 10.w, vertical: 10.h),
            ),
            shape: WidgetStateProperty.all(
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
            ),
            backgroundColor: WidgetStateProperty.all(
              ColorsManager.moreLighterGrey,
            ),
          ),
          initialSelection: "0",
          inputDecorationTheme: InputDecorationTheme(
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
            filled: true,
            fillColor: ColorsManager.moreLighterGrey,
            errorBorder: OutlineInputBorder(
              borderSide: const BorderSide(color: Colors.red, width: 1.3),
              borderRadius: BorderRadius.circular(16),
            ),
          ),
          dropdownMenuEntries: [
            const DropdownMenuEntry(value: '0', label: 'Male'),
            const DropdownMenuEntry(value: '1', label: 'Female'),
          ],

          onSelected: (value) {
            setState(() {
              context.read<SignupCubit>().gender = int.parse(value!);
            });
          },
        ),
      ],
    );
  }
}
