import 'package:doc_doc/core/theming/styles.dart';
import 'package:doc_doc/features/book_appointment/ui/widgets/payment_step_widgets/payment_options.dart';
import 'package:flutter/material.dart';

class PaymentStep extends StatefulWidget {
  const PaymentStep({super.key});

  @override
  State<PaymentStep> createState() => _PaymentStepState();
}

class _PaymentStepState extends State<PaymentStep> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Payment Options', style: TextStyles.font18DarkBlueBold),
          PaymentOptions(),
        ],
      ),
    );
  }
}
