enum NutritionChartName {
  carbs,
  protein,
  fat,
}

extension NutritionChartNameExtension on NutritionChartName {
  String get nutritionChartLabel {
    switch (this) {
      case NutritionChartName.carbs:
        return "Carbs";
      case NutritionChartName.protein:
        return "Protein";
      case NutritionChartName.fat:
        return "Fat";
    }
  }
}
