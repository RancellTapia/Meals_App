import 'package:flutter/material.dart';

import 'package:meals/config/models/models.dart';
import 'package:meals/presentation/screens/log_meal/widgets/widgets.dart';
import 'package:meals/presentation/widgets/widgets.dart';

class _AppColors {
  static const Color black = Color(0xFF000000);
}

class _AppTypography {
  static const double heading1 = 24.0;
  static const double heading2 = 20.0;

  static const TextStyle h2 = TextStyle(
    fontSize: heading1,
    fontWeight: FontWeight.bold,
    color: AppColors.black,
  );

  static const TextStyle h3 = TextStyle(
    fontSize: heading2,
    fontWeight: FontWeight.w600,
    color: AppColors.black,
  );
}

class LogMeals extends StatelessWidget {
  const LogMeals({super.key});

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
              style: _AppTypography.h2.copyWith(
                color: _AppColors.black,
                fontWeight: FontWeight.w500,
              ),
            ),
            MealType(mealType: 'Breakfast'),
            MealType(mealType: 'Lunch'),
            MealType(mealType: 'Dinner'),
            MealType(mealType: 'Snacks'),
            SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}

class MealType extends StatefulWidget {
  final String mealType;

  const MealType({super.key, required this.mealType});

  @override
  _MealTypeState createState() => _MealTypeState();
}

class _MealTypeState extends State<MealType> {
  final List<MealCard> meals = [];

  void _addMeal() {
    setState(() {
      meals.add(MealCard(mealType: widget.mealType)); //
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              widget.mealType,
              style: _AppTypography.h3.copyWith(
                color: _AppColors.black,
                fontWeight: FontWeight.w400,
              ),
            ),
            AddButton(onPressed: _addMeal),
          ],
        ),
        Column(children: meals),
      ],
    );
  }
}
