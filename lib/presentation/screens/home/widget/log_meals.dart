import 'package:flutter/material.dart';

import 'package:meals/config/models/models.dart';
import 'package:meals/presentation/screens/home/widget/widget.dart';

class LogMeals extends StatelessWidget {
  const LogMeals({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          spacing: 14,
          children: [
            Text(
              'Log my meals',
              style: AppTypography.h2.copyWith(
                color: AppColors.textPrimary,
                fontWeight: FontWeight.w500,
              ),
            ),
            MealType(
              mealType: 'Breakfast',
            ),
            MealType(
              mealType: 'Lunch',
            ),
            MealType(
              mealType: 'Dinner',
            ),
            MealType(
              mealType: 'Snacks',
            )
          ],
        ),
      ),
    );
  }
}

class MealType extends StatelessWidget {
  final String mealType;

  const MealType({
    super.key,
    required this.mealType,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          mealType,
          style: AppTypography.body.copyWith(
            color: AppColors.textPrimary,
            fontWeight: FontWeight.w400,
          ),
        ),
        AddButton(onPressed: () {})
      ],
    );
  }
}
