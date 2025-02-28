import 'package:flutter/material.dart';

import 'package:meals/config/enums/nutrition_chart.dart';
import 'package:meals/config/models/models.dart';
import 'package:meals/presentation/widgets/radial_chart.dart';

class _AppColors {
  static const Color black = Color(0xFF000000);
}

class _AppTypography {
  static const double caption = 14.0;

  static const TextStyle captionStyle = TextStyle(
    fontSize: caption,
    fontWeight: FontWeight.w300,
    color: AppColors.grey,
  );
}

class NutrientChart extends StatelessWidget {
  final double nutrientIngested;
  final double dailyGoal;
  final double chartSize;
  final NutritionChartName chartName;

  const NutrientChart({
    super.key,
    this.nutrientIngested = 965,
    this.dailyGoal = 1400,
    this.chartSize = 100,
    required this.chartName,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: chartSize,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          SizedBox(
            width: chartSize,
            height: chartSize,
            child: RadialChartWidget(
              maxValue: dailyGoal,
              value: nutrientIngested,
              size: chartSize,
              centerWidget: FittedBox(
                fit: BoxFit.scaleDown,
                child: Text(
                    nutrientIngested == 0
                        ? '--g'
                        : '${nutrientIngested.toInt()}g',
                    style: _AppTypography.captionStyle.copyWith(
                      color: _AppColors.black,
                      fontWeight: FontWeight.w500,
                    )),
              ),
            ),
          ),
          Text(
            chartName.nutritionChartLabel,
            style: _AppTypography.captionStyle.copyWith(
                color: _AppColors.black,
                fontWeight: FontWeight.w600,
                height: 1.0),
          ),
        ],
      ),
    );
  }
}
