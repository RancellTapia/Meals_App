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
              nutrientIngested: 900,
              dailyGoal: 1400,
            ),
            NutrientChart(
              chartName: NutritionChartName.protein,
              nutrientIngested: 560,
              dailyGoal: 1400,
            ),
            NutrientChart(
              chartName: NutritionChartName.fat,
              nutrientIngested: 450,
              dailyGoal: 1400,
            ),
          ],
        )
      ],
    );
  }
}
