import 'package:flutter/material.dart';

import 'package:meals/config/models/models.dart';
import 'package:meals/presentation/screens/home/widget/widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Meals',
          style: AppTypography.h2.copyWith(
            color: AppColors.textPrimary,
            fontWeight: FontWeight.w500,
          ),
        ),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios),
          onPressed: () {},
        ),
        actions: [
          TextButton(
            onPressed: () {},
            child: Text(
              'Add',
              style: AppTypography.body.copyWith(
                color: AppColors.primary,
                fontWeight: FontWeight.w500,
                height: 1.0,
              ),
            ),
          ),
        ],
      ),
      body: _HomeScreenView(),
    );
  }
}

class _HomeScreenView extends StatelessWidget {
  const _HomeScreenView({super.key});

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
