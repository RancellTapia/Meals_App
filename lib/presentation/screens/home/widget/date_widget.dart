import 'package:flutter/material.dart';
import 'package:meals/config/models/models.dart';

class DateWitget extends StatelessWidget {
  const DateWitget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColors.secondary,
      padding: const EdgeInsets.symmetric(horizontal: 8),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 14),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            IconButton(
              icon: const Icon(Icons.arrow_back_ios),
              onPressed: () {},
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  children: [
                    Text(
                      'Tue, Feb 25, 2025',
                      style: AppTypography.body.copyWith(
                          color: AppColors.textPrimary,
                          fontWeight: FontWeight.w500,
                          height: 1.0),
                    ),
                    Text(
                      'Today',
                      style: AppTypography.captionStyle.copyWith(
                          color: AppColors.textSecondary,
                          fontWeight: FontWeight.w500,
                          height: 2.0),
                    ),
                  ],
                ),
                SizedBox(
                  width: 10,
                ),
                Icon(
                  Icons.calendar_today,
                  size: 18,
                )
              ],
            ),
            SizedBox(
              width: 25,
            )
          ],
        ),
      ),
    );
  }
}
