import 'package:flutter/material.dart';

import 'package:go_router/go_router.dart';

import 'package:meals/config/models/models.dart';

class MealCard extends StatelessWidget {
  final String mealType;
  final String mealName = 'Cheeseburger';

  const MealCard({super.key, required this.mealType});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        context.push('/meal-info/$mealName');
      },
      child: Container(
        margin: const EdgeInsets.only(top: 10),
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: AppColors.background ?? Colors.white,
          borderRadius: BorderRadius.circular(8),
          boxShadow: [
            BoxShadow(
                color: Colors.grey[300] ?? Colors.grey,
                blurRadius: 10,
                spreadRadius: 0.5),
          ],
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(8),
              child: Image.asset('assets/images/cheeseburger.jpg',
                  width: 50, height: 50, fit: BoxFit.cover),
            ),
            SizedBox(width: 12),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Cheeseburger',
                  style: AppTypography.body.copyWith(
                    color: AppColors.textPrimary,
                    fontWeight: FontWeight.w500,
                    height: 1.0,
                  ),
                ),
                Text(
                  '300 cal',
                  style: AppTypography.captionStyle.copyWith(
                    color: AppColors.textPrimary,
                    fontWeight: FontWeight.w500,
                    height: 1.0,
                  ),
                ),
              ],
            ),
            SizedBox(width: 110),
            Icon(Icons.arrow_forward_ios, color: AppColors.textPrimary),
          ],
        ),
      ),
    );
  }
}
