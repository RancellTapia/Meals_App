import 'package:flutter/material.dart';

import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'package:meals/presentation/screens/add_food/widgets/widgets.dart';

class _AppColors {
  static const Color primary = Color(0xFF0A4A4B);
  static const Color grey = Color(0xFF979797);
}

class FoodItem extends StatelessWidget {
  final String name;
  final String calories;
  final bool isFavorite;

  const FoodItem(
      {super.key,
      required this.name,
      required this.calories,
      required this.isFavorite});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        GestureDetector(
          onTap: () {},
          child: FaIcon(FontAwesomeIcons.solidStar,
              size: 24,
              color: isFavorite ? _AppColors.primary : _AppColors.grey),
        ),
        const SizedBox(width: 17),
        ClipRRect(
          borderRadius: BorderRadius.circular(4),
          child: Image.asset('assets/images/cheeseburger.jpg',
              width: 60, height: 60, fit: BoxFit.cover),
        ),
        const SizedBox(width: 12),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(name, style: const TextStyle(fontWeight: FontWeight.bold)),
              Text(calories, style: const TextStyle(color: Colors.grey)),
              Row(
                children: [
                  MealButtons(
                    type: MealButtonType.add,
                  ),
                  SizedBox(width: 10),
                  MealButtons(
                    type: MealButtonType.edit,
                  )
                ],
              )
            ],
          ),
        ),
      ],
    );
  }
}
