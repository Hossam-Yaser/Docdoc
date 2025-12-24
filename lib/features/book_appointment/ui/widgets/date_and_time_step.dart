import 'package:doc_doc/core/helpers/spacing.dart';
import 'package:doc_doc/core/theming/styles.dart';
import 'package:doc_doc/features/book_appointment/ui/widgets/consulting_type_selector.dart';
import 'package:doc_doc/features/book_appointment/ui/widgets/date_selector.dart';
import 'package:doc_doc/features/book_appointment/ui/widgets/time_slot_selector.dart';
import 'package:flutter/material.dart';

class DateAndTimeStep extends StatelessWidget {
  const DateAndTimeStep({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            DateSelector(),
            verticalSpacing(8),
            Text('Available time', style: TextStyles.font18DarkBlueBold),
            verticalSpacing(8),
            TimeSlotSelector(),
            verticalSpacing(16),
            Text('Available time', style: TextStyles.font18DarkBlueBold),
            verticalSpacing(16),
            ConsultationTypeSelector(),
            verticalSpacing(100),
          ],
        ),
      ),
    );
  }
}
