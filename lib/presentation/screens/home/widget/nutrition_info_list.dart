import 'package:flutter/material.dart';

import 'package:meals/config/models/models.dart';

class _AppColors {
  static const Color black = Color(0xFF000000);
  static const Color grey = Color(0xFF979797);
}

class _AppTypography {
  static const double bodyText = 18.0;

  static const TextStyle body = TextStyle(
    fontSize: bodyText,
    fontWeight: FontWeight.normal,
    color: AppColors.black,
  );
}

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
                  style: _AppTypography.body.copyWith(
                    color:
                        item['isSubItem'] ? _AppColors.grey : _AppColors.black,
                    height: 1.0,
                  )),
              Text('${item['value']} ${item['unit']}',
                  style: _AppTypography.body.copyWith(
                    color:
                        item['isSubItem'] ? _AppColors.grey : _AppColors.black,
                    height: 1.2,
                  )),
            ],
          ),
        );
      }).toList(),
    );
  }
}
