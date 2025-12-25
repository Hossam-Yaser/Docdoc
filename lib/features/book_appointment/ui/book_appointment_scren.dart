import 'package:doc_doc/core/helpers/spacing.dart';
import 'package:doc_doc/core/theming/colors.dart';
import 'package:doc_doc/core/theming/styles.dart';
import 'package:doc_doc/core/widgets/app_text_button.dart';
import 'package:doc_doc/features/all_speciality/ui/widgets/custom_app_bar.dart';
import 'package:doc_doc/features/book_appointment/ui/widgets/date_and_time_step_widgets/date_and_time_step.dart';
import 'package:doc_doc/features/book_appointment/ui/widgets/payment_step_widgets/payment_step.dart';
import 'package:doc_doc/features/book_appointment/ui/widgets/step_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BookAppointmentScren extends StatefulWidget {
  const BookAppointmentScren({super.key});

  @override
  State<BookAppointmentScren> createState() => _BookAppointmentScrenState();
}

class _BookAppointmentScrenState extends State<BookAppointmentScren> {
  static const int _lastStepIndex = 2;

  int _currentIndex = 0;

  void _onContinuePressed() {
    if (_currentIndex < _lastStepIndex) {
      setState(() => _currentIndex++);
      return;
    }

    _finishBooking();
  }

  void _finishBooking() {
    showDialog(
      context: context,
      builder: (context) => Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Icon(Icons.check, color: ColorsManager.mainBlue, size: 80),
            DefaultTextStyle(
              style: TextStyles.font32BlueBold,
              child: Text('Booked Successfully'),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildStepContent() {
    switch (_currentIndex) {
      case 0:
        return DateAndTimeStep();
      case 1:
        return PaymentStep();
      case 2:
        return SizedBox.expand();
      default:
        return const SizedBox.shrink();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: Padding(
        padding: const EdgeInsets.fromLTRB(16, 0, 16, 24),
        child: AppTextButton(
          buttonText: _currentIndex == _lastStepIndex ? 'Finish' : 'Continue',
          textStyle: TextStyles.font16WhiteSemiBold,
          onPressed: _onContinuePressed,
        ),
      ),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.h, vertical: 8.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const CustomAppBar(title: 'Book Appointment'),
              verticalSpacing(32),
              StepIndicator(
                currentIndex: _currentIndex,
                onStepNodeTapped: (index) {
                  setState(() => _currentIndex = index);
                },
              ),
              Expanded(child: _buildStepContent()),
            ],
          ),
        ),
      ),
    );
  }
}
