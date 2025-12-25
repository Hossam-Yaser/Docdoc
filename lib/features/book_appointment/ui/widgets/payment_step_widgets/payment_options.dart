import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class PaymentOptions extends StatefulWidget {
  const PaymentOptions({super.key});

  @override
  State<PaymentOptions> createState() => _PaymentOptionsState();
}

class _PaymentOptionsState extends State<PaymentOptions> {
  String selectedPayment = 'credit_card';
  String? selectedCard;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // Credit Card Option
        _buildPaymentOption(
          value: 'credit_card',
          title: 'Credit Card',
          isExpanded: selectedPayment == 'credit_card',
        ),

        // Credit Card Details (shown when expanded)
        if (selectedPayment == 'credit_card') ...[
          const SizedBox(height: 8),
          _buildCardOption(
            cardType: 'mastercard',
            cardName: 'Master Card',
            icon: SvgPicture.asset('assets/svgs/mastercard.svg'),
          ),
          _buildCardOption(
            cardType: 'amex',
            cardName: 'American Express',
            icon: SvgPicture.asset('assets/svgs/AmericanExpress.svg'),
          ),
          _buildCardOption(
            cardType: 'capital_one',
            cardName: 'Capital One',
            icon: SvgPicture.asset('assets/svgs/CapitalOne.svg'),
          ),
          _buildCardOption(
            cardType: 'barclays',
            cardName: 'Barclays',
            icon: SvgPicture.asset('assets/svgs/Barclays.svg'),
          ),
        ],

        const SizedBox(height: 8),

        // Bank Transfer Option
        _buildPaymentOption(
          value: 'bank_transfer',
          title: 'Bank Transfer',
          isExpanded: false,
        ),

        const SizedBox(height: 8),

        // PayPal Option
        _buildPaymentOption(
          value: 'paypal',
          title: 'Paypal',
          isExpanded: false,
        ),
      ],
    );
  }

  Widget _buildPaymentOption({
    required String value,
    required String title,
    required bool isExpanded,
  }) {
    return InkWell(
      onTap: () {
        setState(() {
          selectedPayment = value;
          if (value != 'credit_card') {
            selectedCard = null;
          }
        });
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 12.0),
        child: Row(
          children: [
            Radio<String>(
              value: value,
              groupValue: selectedPayment,
              onChanged: (String? newValue) {
                setState(() {
                  selectedPayment = newValue!;
                  if (newValue != 'credit_card') {
                    selectedCard = null;
                  }
                });
              },
              activeColor: Colors.blue,
            ),
            Text(
              title,
              style: const TextStyle(fontSize: 16, color: Colors.black87),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildCardOption({
    required String cardType,
    required String cardName,
    required SvgPicture icon,
  }) {
    return InkWell(
      onTap: () {
        setState(() {
          selectedCard = cardType;
        });
      },
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 12.0, horizontal: 16.0),
        margin: const EdgeInsets.only(left: 48.0, bottom: 8.0),
        decoration: BoxDecoration(
          border: Border.all(color: Colors.grey.shade300, width: 1),
          borderRadius: BorderRadius.circular(8),
        ),
        child: Row(
          children: [
            Container(
              width: 32,
              height: 32,
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(6)),
              child: icon,
            ),
            const SizedBox(width: 12),
            Text(
              cardName,
              style: const TextStyle(fontSize: 15, color: Colors.black87),
            ),
          ],
        ),
      ),
    );
  }
}
