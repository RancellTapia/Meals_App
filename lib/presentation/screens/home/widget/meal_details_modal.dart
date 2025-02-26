import 'package:flutter/material.dart';

import 'package:meals/presentation/screens/home/widget/widget.dart';
import 'package:meals/config/models/models.dart';

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
                style: AppTypography.h2.copyWith(
                  color: AppColors.textPrimary,
                  fontWeight: FontWeight.w500,
                ),
              ),
              TextButton(
                onPressed: () => Navigator.pop(context),
                child: Text("Done",
                    style: AppTypography.body.copyWith(
                      color: AppColors.primary,
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
          const SizedBox(height: 20),
          NutritionInfoList(nutritionData: NutritionData.items),
        ],
      ),
    );
  }
}
