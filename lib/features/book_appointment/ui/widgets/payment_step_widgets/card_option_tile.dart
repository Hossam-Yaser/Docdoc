import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CardOptionTile extends StatelessWidget {
  const CardOptionTile({
    super.key,
    required this.cardType,
    required this.cardName,
    required this.iconPath,
    required this.selectedCard,
    required this.onTap,
  });

  final String cardType;
  final String cardName;
  final String iconPath;
  final String? selectedCard;
  final ValueChanged<String> onTap;

  @override
  Widget build(BuildContext context) {
    final bool isSelected = selectedCard == cardType;

    return InkWell(
      onTap: () => onTap(cardType),
      child: Container(
        margin: const EdgeInsets.only(left: 48, bottom: 8),
        padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 16),
        decoration: BoxDecoration(
          border: Border.all(
            color: isSelected ? Colors.blue : Colors.grey.shade300,
          ),
          borderRadius: BorderRadius.circular(8),
        ),
        child: Row(
          children: [
            SvgPicture.asset(iconPath, width: 32, height: 32),
            const SizedBox(width: 12),
            Text(cardName, style: const TextStyle(fontSize: 15)),
          ],
        ),
      ),
    );
  }
}
