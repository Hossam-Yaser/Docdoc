import 'package:doc_doc/core/theming/colors.dart';
import 'package:doc_doc/core/theming/styles.dart';
import 'package:flutter/material.dart';
import 'package:step_progress/step_progress.dart';

class StepIndicator extends StatelessWidget {
  const StepIndicator({
    super.key,
    required this.currentIndex,
    this.stepProgressController,
    this.onStepNodeTapped,
  });

  final int currentIndex;
  final StepProgressController? stepProgressController;
  final ValueChanged<int>? onStepNodeTapped;

  static const int _totalSteps = 3;
  static const List<String> _stepTitles = ['Date & Time', 'Payment', 'Summary'];

  @override
  Widget build(BuildContext context) {
    return StepProgress(
      totalSteps: _totalSteps,
      currentStep: currentIndex,
      stepNodeSize: 60,
      visibilityOptions: StepProgressVisibilityOptions.nodeThenLine,
      controller: stepProgressController,
      nodeTitles: _stepTitles,
      theme: _buildTheme(),
      onStepNodeTapped: onStepNodeTapped,
    );
  }

  StepProgressThemeData _buildTheme() {
    return StepProgressThemeData(
      nodeLabelAlignment: StepLabelAlignment.bottom,
      stepLineSpacing: 2,
      stepLineStyle: const StepLineStyle(lineThickness: 2),
      defaultForegroundColor: ColorsManager.secondaryBlue,
      activeForegroundColor: ColorsManager.mainBlue,
      nodeLabelStyle: StepLabelStyle(titleStyle: TextStyles.font10BlueRegular),
    );
  }
}
