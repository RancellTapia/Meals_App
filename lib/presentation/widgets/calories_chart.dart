import 'package:flutter/material.dart';

import 'package:meals/config/models/models.dart';
import 'package:meals/presentation/widgets/radial_chart.dart';

class _AppColors {
  static const Color black = Color(0xFF000000);
}

class _AppTypography {
  static const double bodyText = 18.0;

  static const TextStyle h1 = TextStyle(
    fontSize: 32,
    fontWeight: FontWeight.bold,
    color: AppColors.black,
  );

  static const TextStyle body = TextStyle(
    fontSize: bodyText,
    fontWeight: FontWeight.normal,
    color: AppColors.black,
  );
}

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
      child: RadialChartWidget(
        maxValue: dailyGoal,
        value: caloriesBurned,
        size: chartSize,
        centerWidget: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('CALORIES',
                style: _AppTypography.body.copyWith(
                    color: _AppColors.black, fontWeight: FontWeight.w600)),
            Text('${caloriesBurned.toInt()}',
                style: _AppTypography.h1.copyWith(
                    color: _AppColors.black, fontWeight: FontWeight.w700)),
            SizedBox(height: 8),
            Text('${dailyGoal.toInt()}',
                style: _AppTypography.body
                    .copyWith(color: _AppColors.black, height: 1.0)),
            Text('daily goal',
                style: _AppTypography.body
                    .copyWith(color: _AppColors.black, height: 1.0)),
          ],
        ),
      ),
    );
  }
}
