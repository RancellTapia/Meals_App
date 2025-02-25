import 'package:flutter/material.dart';
import 'package:meals/config/enums/nutrition_chart.dart';
import 'package:meals/config/models/models.dart';

import 'package:meals/presentation/widgets/radial_chart.dart';

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
                    style: AppTypography.body.copyWith(
                      color: AppColors.textPrimary,
                      fontWeight: FontWeight.w500,
                    )),
              ),
            ),
          ),
          Text(
            chartName.nutritionChartLabel,
            style: AppTypography.captionStyle.copyWith(
                color: AppColors.textPrimary,
                fontWeight: FontWeight.w600,
                height: 1.0),
          ),
        ],
      ),
    );
  }
}
