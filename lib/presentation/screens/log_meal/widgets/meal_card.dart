import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'package:go_router/go_router.dart';

import 'package:meals/config/models/models.dart';

class _AppColors {
  static const Color white = Color(0xFFFFFFFF);
  static const Color black = Color(0xFF000000);
}

class _AppTypography {
  static const double bodyText = 18.0;
  static const double caption = 14.0;

  static const TextStyle body = TextStyle(
    fontSize: bodyText,
    fontWeight: FontWeight.normal,
    color: AppColors.black,
  );

  static const TextStyle captionStyle = TextStyle(
    fontSize: caption,
    fontWeight: FontWeight.w300,
    color: AppColors.grey,
  );
}

class MealCard extends StatelessWidget {
  final String mealType;
  final String mealName = 'Cheeseburger';

  const MealCard({super.key, required this.mealType});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        context.push('/fool-detail/$mealName');
      },
      child: Container(
        margin: const EdgeInsets.only(top: 10),
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
        decoration: BoxDecoration(
          color: _AppColors.white ?? Colors.white,
          borderRadius: BorderRadius.circular(16),
          boxShadow: [
            BoxShadow(
                color: Colors.grey[300] ?? Colors.grey,
                blurRadius: 10,
                spreadRadius: 0.5),
          ],
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(4),
              child: Image.asset('assets/images/cheeseburger.jpg',
                  width: 60, height: 60, fit: BoxFit.cover),
            ),
            SizedBox(width: 12),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Cheeseburger',
                    style: _AppTypography.body.copyWith(
                      color: _AppColors.black,
                      fontWeight: FontWeight.w500,
                      height: 1.0,
                    ),
                  ),
                  Text(
                    '300 cal',
                    style: _AppTypography.captionStyle.copyWith(
                      color: _AppColors.black,
                      fontWeight: FontWeight.w500,
                      height: 1.0,
                    ),
                  ),
                ],
              ),
            ),
            FaIcon(
              FontAwesomeIcons.chevronRight,
              size: 24,
              color: _AppColors.black,
            ),
          ],
        ),
      ),
    );
  }
}
