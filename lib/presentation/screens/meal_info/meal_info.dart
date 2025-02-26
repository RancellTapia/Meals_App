import 'package:flutter/material.dart';

import 'package:go_router/go_router.dart';

import 'package:meals/config/models/models.dart';
import 'package:meals/presentation/screens/home/widget/widget.dart';
import 'package:meals/presentation/screens/meal_info/widget/widget.dart';

class MealInfo extends StatelessWidget {
  final String mealName;

  const MealInfo({super.key, required this.mealName});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      appBar: AppBar(
        title: Text(
          mealName,
          style: AppTypography.h2.copyWith(
            color: AppColors.textPrimary,
            fontWeight: FontWeight.w500,
          ),
        ),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios),
          onPressed: () {
            context.pop();
          },
        ),
        actions: [
          IconButton(
              onPressed: () {},
              icon: Icon(Icons.star, color: AppColors.primary))
        ],
      ),
      body: _MealInfoView(),
    );
  }
}

class _MealInfoView extends StatelessWidget {
  const _MealInfoView({super.key});

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
            style: AppTypography.body.copyWith(
              color: AppColors.error,
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
