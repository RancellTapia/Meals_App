import 'package:flutter/material.dart';

import 'package:meals/presentation/screens/log_meal/widget/widget.dart';
import 'package:meals/config/models/models.dart';

class _AppColors {
  static const Color primary = Color(0xFF0A4A4B);
  static const Color black = Color(0xFF000000);
}

class _AppTypography {
  static const double heading2 = 20.0;

  static const TextStyle h3 = TextStyle(
    fontSize: heading2,
    fontWeight: FontWeight.w600,
    color: AppColors.black,
  );
}

class MealDetailsModal extends StatelessWidget {
  const MealDetailsModal({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10, bottom: 34, right: 16, left: 16),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(
                width: 66,
              ),
              Text(
                "Meal Details",
                style: _AppTypography.h3.copyWith(
                  color: _AppColors.black,
                  fontWeight: FontWeight.w500,
                ),
              ),
              TextButton(
                onPressed: () => Navigator.pop(context),
                child: Text("Done",
                    style: _AppTypography.h3.copyWith(
                      color: _AppColors.primary,
                      fontWeight: FontWeight.w500,
                      height: 1.0,
                    )),
              ),
            ],
          ),
          Divider(
            color: Colors.grey[300],
            thickness: 1.8,
            height: 10,
          ),
          const SizedBox(height: 16),
          NutritionInfoList(nutritionData: NutritionData.items),
        ],
      ),
    );
  }
}
