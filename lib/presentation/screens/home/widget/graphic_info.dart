import 'package:flutter/material.dart';

import 'package:meals/config/enums/nutrition_chart.dart';
import 'package:meals/presentation/widgets/widgets.dart';

class GraphipInfo extends StatelessWidget {
  const GraphipInfo({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 16),
        CaloriesChart(
          caloriesBurned: 965,
          dailyGoal: 1400,
          chartSize: 160,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            NutrientChart(
              chartName: NutritionChartName.carbs,
              nutrientIngested: 0,
              dailyGoal: 1400,
            ),
            NutrientChart(
              chartName: NutritionChartName.protein,
              nutrientIngested: 0,
              dailyGoal: 1400,
            ),
            NutrientChart(
              chartName: NutritionChartName.fat,
              nutrientIngested: 0,
              dailyGoal: 1400,
            ),
          ],
        )
      ],
    );
  }
}
