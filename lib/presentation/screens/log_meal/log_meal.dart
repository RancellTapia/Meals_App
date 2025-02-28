import 'package:flutter/material.dart';

import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'package:meals/config/models/models.dart';
import 'package:meals/presentation/screens/log_meal/widget/widget.dart';

class _AppColors {
  static const Color primary = Color(0xFF0A4A4B);
  static const Color white = Color(0xFFFFFFFF);
  static const Color black = Color(0xFF000000);
}

class _AppTypography {
  static const double heading2 = 20.0;
  static const double bodyText = 18.0;

  static const TextStyle h3 = TextStyle(
    fontSize: heading2,
    fontWeight: FontWeight.w600,
    color: AppColors.black,
  );

  static const TextStyle body = TextStyle(
    fontSize: bodyText,
    fontWeight: FontWeight.normal,
    color: AppColors.black,
  );
}

class LogMeal extends StatelessWidget {
  const LogMeal({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: _AppColors.white,
        title: Text(
          'Meals',
          style: _AppTypography.h3.copyWith(
            color: _AppColors.black,
            fontWeight: FontWeight.w500,
          ),
        ),
        leading: IconButton(
          icon: FaIcon(FontAwesomeIcons.chevronLeft,
              size: 24, color: _AppColors.black),
          onPressed: () {},
        ),
        actions: [
          TextButton(
            onPressed: () {},
            child: Text(
              'Add',
              style: _AppTypography.body.copyWith(
                color: _AppColors.primary,
                fontWeight: FontWeight.w500,
                height: 1.0,
              ),
            ),
          ),
        ],
      ),
      body: _LogMealView(),
    );
  }
}

class _LogMealView extends StatelessWidget {
  const _LogMealView({super.key});

  void _showNutritionModal(BuildContext context) {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(16)),
      ),
      builder: (context) => const MealDetailsModal(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          DateWitget(),
          const SizedBox(height: 10),
          GraphipInfo(),
          const SizedBox(height: 16),
          RoundedButton(
            text: 'Nutrition Information',
            onPressed: () => _showNutritionModal(context),
          ),
          Divider(
            color: Colors.grey[300],
            thickness: 1.8,
            height: 30,
          ),
          LogMeals(),
        ],
      ),
    );
  }
}
