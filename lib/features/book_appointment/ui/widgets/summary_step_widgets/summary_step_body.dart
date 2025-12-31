import 'package:doc_doc/core/helpers/spacing.dart';
import 'package:doc_doc/core/theming/colors.dart';
import 'package:doc_doc/core/theming/styles.dart';
import 'package:doc_doc/features/book_appointment/ui/widgets/summary_step_widgets/build_info_card.dart';
import 'package:flutter/material.dart';

class AppointmentSummaryBody extends StatelessWidget {
  const AppointmentSummaryBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Booking Information Section
          Text('Booking Information', style: TextStyles.font18DarkBlueBold),
          verticalSpacing(20),

          // Date & Time Card
          BuildInfoCard(
            icon: Icons.calendar_today,
            iconColor: Colors.blue,
            title: 'Date & Time',
            subtitle: 'Wednesday, 08 May 2023\n08.30 AM',
          ),
          verticalSpacing(16),

          // Appointment Type Card
          BuildInfoCard(
            icon: Icons.description_outlined,
            iconColor: Colors.green,
            title: 'Appointment Type',
            subtitle: 'In Person',
          ),
          verticalSpacing(32),

          // Doctor Information Section
          Text('Doctor Information', style: TextStyles.font18DarkBlueBold),
          verticalSpacing(20),

          // Doctor Card
          _buildDoctorCard(),
          verticalSpacing(32),

          // Payment Information Section
          Text('Payment Information', style: TextStyles.font18DarkBlueBold),
          verticalSpacing(20),

          // Payment Method Card
          _buildPaymentMethodCard(),
          verticalSpacing(32),

          // Payment Info Section
          Text('Payment Info', style: TextStyles.font18DarkBlueBold),
          verticalSpacing(20),

          // Payment Details
          _buildPaymentRow('Subtotal', '\$4694'),
          verticalSpacing(12),
          _buildPaymentRow('Tax', '\$250'),
          verticalSpacing(20),

          const Divider(thickness: 1),
          verticalSpacing(16),

          // Payment Total
          _buildPaymentRow(
            'Payment Total',
            '\$4944',
            isBold: true,
            fontSize: 20,
          ),
          verticalSpacing(100),
        ],
      ),
    );
  }

  // Doctor Card Widget
  Widget _buildDoctorCard() {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: ColorsManager.lighterGrey),
      ),
      child: Row(
        children: [
          // Doctor Image
          Container(
            width: 80,
            height: 80,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              color: ColorsManager.lighterGrey,
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(12),
              child: Image.network(
                'https://via.placeholder.com/80',
                fit: BoxFit.cover,
                errorBuilder: (context, error, stackTrace) {
                  return Icon(
                    Icons.person,
                    size: 40,
                    color: ColorsManager.grey,
                  );
                },
              ),
            ),
          ),
          horizontalSpacing(16),
          // Doctor Info
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Dr. Randy Wigham', style: TextStyles.font18DarkBlueBold),
                verticalSpacing(4),
                Text(
                  'General | RSUD Gatot Subroto',
                  style: TextStyles.font14DarkBlueMedium,
                ),
                verticalSpacing(8),
                Row(
                  children: [
                    const Icon(Icons.star, color: Colors.amber, size: 18),
                    horizontalSpacing(4),
                    Text('4.8', style: TextStyles.font14DarkBlueMedium),
                    horizontalSpacing(4),
                    Text(
                      '(4,279 reviews)',
                      style: TextStyles.font12DarkBlueRegular,
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  // Payment Method Card Widget
  Widget _buildPaymentMethodCard() {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: ColorsManager.lighterGrey),
      ),
      child: Row(
        children: [
          // PayPal Icon
          Container(
            padding: const EdgeInsets.all(12),
            decoration: BoxDecoration(
              color: ColorsManager.lighterGrey,
              borderRadius: BorderRadius.circular(12),
            ),
            child: const Icon(
              Icons.payment,
              color: ColorsManager.mainBlue,
              size: 28,
            ),
          ),
          horizontalSpacing(16),
          // Payment Info
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Paypal', style: TextStyles.font18DarkBlueSemiBold),
                verticalSpacing(4),
                Text(
                  '••••• ••••• ••••• 37842',
                  style: TextStyles.font12lightGreyregular,
                ),
              ],
            ),
          ),
          // Change Button
          TextButton(
            onPressed: () {
              // Handle change payment method
            },
            style: TextButton.styleFrom(
              foregroundColor: Colors.blue,
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
                side: const BorderSide(color: Colors.blue),
              ),
            ),
            child: const Text(
              'Change',
              style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
            ),
          ),
        ],
      ),
    );
  }

  // Payment Row Widget
  Widget _buildPaymentRow(
    String label,
    String amount, {
    bool isBold = false,
    double fontSize = 16,
  }) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          label,
          style: TextStyle(
            fontSize: fontSize,
            fontWeight: isBold ? FontWeight.bold : FontWeight.w500,
            color: isBold ? Colors.black87 : Colors.grey[700],
          ),
        ),
        Text(
          amount,
          style: TextStyle(
            fontSize: fontSize,
            fontWeight: isBold ? FontWeight.bold : FontWeight.w600,
            color: Colors.black87,
          ),
        ),
      ],
    );
  }
}
