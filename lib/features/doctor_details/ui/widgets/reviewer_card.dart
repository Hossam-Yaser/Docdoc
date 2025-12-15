import 'package:doc_doc/core/theming/colors.dart';
import 'package:flutter/material.dart';

class ReviewCard extends StatelessWidget {
  final String date;

  const ReviewCard({super.key, this.date = 'Today'});

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      color: ColorsManager.moreLighterGrey,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Header with avatar, name, and date
            Row(
              children: [
                // Avatar
                CircleAvatar(
                  radius: 28,
                  backgroundImage: AssetImage('assets/images/home_nurse.png'),
                ),
                const SizedBox(width: 12),
                // Name and stars
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Jane Cooper',
                        style: const TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height: 4),
                      // Star rating
                      Row(
                        children: List.generate(
                          5,
                          (index) => Icon(
                            Icons.star,
                            color: index < 5
                                ? Colors.amber
                                : ColorsManager.secondaryBlue,
                            size: 24,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                // Date
                Text(
                  date,
                  style: TextStyle(fontSize: 14, color: Colors.grey[600]),
                ),
              ],
            ),
            const SizedBox(height: 16),
            // Review text
            Text(
              'As someone who lives in a remote area with limited access to healthcare, this telemedicine app has been a game changer for me. I can easily schedule virtual appointments with doctors and get the care I need without having to travel long distances.',
              style: TextStyle(
                fontSize: 15,
                color: ColorsManager.grey,
                height: 1.5,
              ),
              maxLines: 6,
              overflow: TextOverflow.ellipsis,
            ),
          ],
        ),
      ),
    );
  }
}
