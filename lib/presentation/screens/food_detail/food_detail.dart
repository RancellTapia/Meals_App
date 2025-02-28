import 'package:flutter/material.dart';

import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';

import 'package:meals/config/models/models.dart';
import 'package:meals/presentation/screens/log_meal/widget/widget.dart';
import 'package:meals/presentation/screens/food_detail/widget/widget.dart';

class _AppColors {
  static const Color primary = Color(0xFF0A4A4B);
  static const Color white = Color(0xFFFFFFFF);
  static const Color black = Color(0xFF000000);
  static const Color error = Color(0xFFE22424);
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

class FoodDetail extends StatelessWidget {
  final String mealName;

  const FoodDetail({super.key, required this.mealName});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: _AppColors.white,
        title: Text(
          mealName,
          style: _AppTypography.h3.copyWith(
            color: _AppColors.black,
            fontWeight: FontWeight.w500,
          ),
        ),
        leading: IconButton(
          icon: FaIcon(FontAwesomeIcons.chevronLeft,
              size: 24, color: _AppColors.black),
          onPressed: () {
            context.pop();
          },
        ),
        actions: [
          IconButton(
              onPressed: () {},
              icon: FaIcon(FontAwesomeIcons.solidStar,
                  size: 24, color: _AppColors.primary))
        ],
      ),
      body: _FoodDetailView(),
    );
  }
}

class _FoodDetailView extends StatelessWidget {
  const _FoodDetailView({super.key});

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
        Image.asset('assets/images/cheeseburger.jpg',
            width: double.infinity, height: 180, fit: BoxFit.cover),
        GraphipInfo(),
        const SizedBox(height: 16),
        RoundedButton(
          text: 'Nutrition Information',
          onPressed: () => _showNutritionModal(context),
        ),
        MealInfoCard(),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 6),
          child: ActiveButton(
              text: 'Save',
              onPressed: () {
                context.pop();
              }),
        ),
        TextButton(
          onPressed: () {
            context.pop();
          },
          child: Text(
            'Remove from Meal',
            style: _AppTypography.body.copyWith(
              color: _AppColors.error,
              fontWeight: FontWeight.w500,
              height: 1.0,
            ),
          ),
        ),
        SizedBox(height: 30),
      ],
    ));
  }
}
