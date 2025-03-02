import 'package:flutter/material.dart';
import 'package:meals/presentation/widgets/widgets.dart';

enum MealButtonType {
  add,
  edit,
}

class _AppColors {
  static const Color black = Color(0xFF000000);
  static const Color grey = Color(0xFF979797);
}

class _AppTypography {
  static const double caption = 14.0;

  static const TextStyle captionStyle = TextStyle(
    fontSize: caption,
    fontWeight: FontWeight.w300,
    color: _AppColors.grey,
  );
}

class MealButtons extends StatelessWidget {
  final MealButtonType type;

  const MealButtons({
    super.key,
    required this.type,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        type == MealButtonType.edit
            ? EditButton(
                onPressed: () {},
                size: 16,
              )
            : AddButton(
                onPressed: () {},
                size: 16,
              ),
        SizedBox(width: 10),
        Text(
          type == MealButtonType.add ? "Add to Meal" : "Edit Details",
          style: _AppTypography.captionStyle.copyWith(
            color: _AppColors.black,
            fontWeight: FontWeight.w400,
          ),
        ),
      ],
    );
  }
}
