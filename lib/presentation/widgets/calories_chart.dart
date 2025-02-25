import 'package:flutter/material.dart';
import 'package:meals/config/models/models.dart';

import 'package:meals/presentation/widgets/radial_chart.dart';

class CaloriesChart extends StatelessWidget {
  final double caloriesBurned;
  final double dailyGoal;
  final double chartSize;

  const CaloriesChart(
      {super.key,
      this.caloriesBurned = 965,
      this.dailyGoal = 1400,
      this.chartSize = 200});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: chartSize,
      height: chartSize,
      child: Center(
        child: RadialChartWidget(
          maxValue: dailyGoal,
          value: caloriesBurned,
          size: chartSize,
          centerWidget: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('CALORIES',
                  style: AppTypography.body.copyWith(
                      color: AppColors.textPrimary,
                      fontWeight: FontWeight.w600)),
              Text('${caloriesBurned.toInt()}',
                  style: AppTypography.h1.copyWith(
                      color: AppColors.textPrimary,
                      fontWeight: FontWeight.w700)),
              SizedBox(height: 8),
              Text('${dailyGoal.toInt()}',
                  style: AppTypography.body
                      .copyWith(color: AppColors.textPrimary, height: 1.0)),
              Text('daily goal',
                  style: AppTypography.body
                      .copyWith(color: AppColors.textPrimary, height: 1.0)),
            ],
          ),
        ),
      ),
    );
  }
}
