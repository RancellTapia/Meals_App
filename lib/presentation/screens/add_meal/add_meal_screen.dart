import 'package:flutter/material.dart';

import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'package:meals/presentation/widgets/widgets.dart';

class _AppColors {
  static const Color white = Color(0xFFFFFFFF);
  static const Color black = Color(0xFF000000);
}

class _AppTypography {
  static const double heading2 = 20.0;

  static const TextStyle h3 = TextStyle(
    fontSize: heading2,
    fontWeight: FontWeight.w600,
    color: _AppColors.black,
  );
}

class AddMealScreen extends StatelessWidget {
  const AddMealScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: _AppColors.white,
        title: Text(
          'Add Meal',
          style: _AppTypography.h3.copyWith(
            color: _AppColors.black,
            fontWeight: FontWeight.w500,
          ),
        ),
        leading: IconButton(
            icon: FaIcon(FontAwesomeIcons.chevronLeft,
                size: 24, color: _AppColors.black),
            onPressed: () => Navigator.pop(context)),
      ),
      body: _AddMealView(),
    );
  }
}

class _AddMealView extends StatelessWidget {
  const _AddMealView({
    super.key,
  });

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
    return Container(
      color: _AppColors.white,
      child: Stack(children: [
        Column(
          children: [
            const SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  AddImage(onTap: () {}),
                  const SizedBox(width: 16),
                  Expanded(
                    child: CustomTextField(title: "Food Name"),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 35),
              child: Column(
                children: [
                  const SizedBox(height: 32),
                  OutlineButton(
                      text: "Add Food to This Meal", onPressed: () {}),
                  const SizedBox(height: 30),
                  Counter(label: "Serving"),
                  const SizedBox(height: 20),
                  Counter(label: "Fractional"),
                  const SizedBox(height: 10),
                  GraphipInfo(),
                  const SizedBox(height: 20),
                  RoundedButton(
                    text: 'Nutrition Information',
                    onPressed: () => _showNutritionModal(context),
                  ),
                ],
              ),
            )
          ],
        ),
        Positioned(
          bottom: 40,
          left: 0,
          right: 0,
          child: SizedBox(
            width: MediaQuery.of(context).size.width,
            child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ActiveButton(
                        text: "Save", onPressed: () => Navigator.pop(context)),
                  ],
                )),
          ),
        ),
      ]),
    );
  }
}
