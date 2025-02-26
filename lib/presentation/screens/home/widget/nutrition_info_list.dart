import 'package:flutter/material.dart';

import 'package:meals/config/models/models.dart';

class NutritionInfoList extends StatelessWidget {
  final List<Map<String, dynamic>> nutritionData;

  const NutritionInfoList({
    super.key,
    required this.nutritionData,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: nutritionData.map((item) {
        return Padding(
          padding:
              EdgeInsets.only(left: item['isSubItem'] ? 20.0 : 0.0, bottom: 8),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(item['name'],
                  style: AppTypography.body.copyWith(
                    color: item['isSubItem']
                        ? AppColors.textSecondary
                        : AppColors.textPrimary,
                    fontWeight:
                        item['isSubItem'] ? FontWeight.normal : FontWeight.bold,
                    height: 1.0,
                  )),
              Text('${item['value']} ${item['unit']}',
                  style: AppTypography.body.copyWith(
                    color: item['isSubItem']
                        ? AppColors.textSecondary
                        : AppColors.textPrimary,
                    fontWeight:
                        item['isSubItem'] ? FontWeight.normal : FontWeight.bold,
                    height: 1.2,
                  )),
            ],
          ),
        );
      }).toList(),
    );
  }
}
