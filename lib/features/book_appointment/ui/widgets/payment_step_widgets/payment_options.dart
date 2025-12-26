import 'package:doc_doc/core/helpers/constants.dart';
import 'package:doc_doc/features/book_appointment/ui/widgets/payment_step_widgets/card_option_tile.dart';
import 'package:doc_doc/features/book_appointment/ui/widgets/payment_step_widgets/payment_method_tile.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class PaymentOptions extends StatefulWidget {
  const PaymentOptions({super.key});

  @override
  State<PaymentOptions> createState() => _PaymentOptionsState();
}

class _PaymentOptionsState extends State<PaymentOptions> {
  String selectedPayment = PaymentMethod.creditCard;
  String? selectedCard;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        PaymentMethodTile(
          value: PaymentMethod.creditCard,
          title: 'Credit Card',
          groupValue: selectedPayment,
          onChanged: _onPaymentChanged,
        ),

        if (selectedPayment == PaymentMethod.creditCard) ...[
          const SizedBox(height: 8),
          CardOptionTile(
            cardType: CardType.masterCard,
            cardName: 'Master Card',
            iconPath: 'assets/svgs/mastercard.svg',
            selectedCard: selectedCard,
            onTap: _onCardSelected,
          ),
          CardOptionTile(
            cardType: CardType.amex,
            cardName: 'American Express',
            iconPath: 'assets/svgs/AmericanExpress.svg',
            selectedCard: selectedCard,
            onTap: _onCardSelected,
          ),
          CardOptionTile(
            cardType: CardType.capitalOne,
            cardName: 'Capital One',
            iconPath: 'assets/svgs/CapitalOne.svg',
            selectedCard: selectedCard,
            onTap: _onCardSelected,
          ),
          CardOptionTile(
            cardType: CardType.barclays,
            cardName: 'Barclays',
            iconPath: 'assets/svgs/Barclays.svg',
            selectedCard: selectedCard,
            onTap: _onCardSelected,
          ),
        ],

        const SizedBox(height: 8),

        PaymentMethodTile(
          value: PaymentMethod.bankTransfer,
          title: 'Bank Transfer',
          groupValue: selectedPayment,
          onChanged: _onPaymentChanged,
        ),

        const SizedBox(height: 8),

        PaymentMethodTile(
          value: PaymentMethod.paypal,
          title: 'Paypal',
          groupValue: selectedPayment,
          onChanged: _onPaymentChanged,
        ),
      ],
    );
  }

  void _onPaymentChanged(String value) {
    setState(() {
      selectedPayment = value;
      if (value != PaymentMethod.creditCard) {
        selectedCard = null;
      }
    });
  }

  void _onCardSelected(String cardType) {
    setState(() {
      selectedCard = cardType;
    });
  }
}
