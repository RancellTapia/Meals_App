import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'package:meals/config/models/models.dart';
import 'package:meals/presentation/screens/meal_info/widget/widget.dart';

class _AppColors {
  static const Color white = Color(0xFFFFFFFF);
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

class MealInfoCard extends StatelessWidget {
  const MealInfoCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 40),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          _CardInfo(
            title: 'Date',
            icon: FaIcon(FontAwesomeIcons.calendar,
                size: 20, color: _AppColors.black),
            value: 'Tue, Feb 25, 2025',
          ),
          const SizedBox(height: 20),
          SizedBox(
            width: double.infinity,
            child: Row(
              children: [
                Expanded(
                  child: _CardInfo(
                    title: 'Meal Type',
                    icon: FaIcon(FontAwesomeIcons.caretDown,
                        size: 20, color: _AppColors.black),
                    value: 'Breakfast',
                    iconSize: 30,
                  ),
                ),
                const SizedBox(width: 16),
                Expanded(
                  child: _CardInfo(
                    title: 'Time',
                    value: '08:30 AM',
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 20),
          Counter(
            label: 'Serving',
          ),
          const SizedBox(height: 20),
          Counter(
            label: 'Fractional',
          ),
          const SizedBox(height: 40),
        ],
      ),
    );
  }
}

class _CardInfo extends StatelessWidget {
  final String title;
  final String value;
  final FaIcon? icon;
  final double iconSize;

  const _CardInfo({
    required this.title,
    required this.value,
    this.icon,
    this.iconSize = 18,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: _AppTypography.captionStyle.copyWith(
            color: _AppColors.black,
            fontWeight: FontWeight.w600,
            height: 1.0,
          ),
        ),
        Container(
          margin: const EdgeInsets.only(top: 10),
          padding: const EdgeInsets.all(10),
          decoration: BoxDecoration(
            color: _AppColors.white,
            borderRadius: BorderRadius.circular(8),
            boxShadow: [
              BoxShadow(
                color: Colors.grey[300] ?? Colors.grey,
                blurRadius: 10,
                spreadRadius: 0.5,
              ),
            ],
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                value,
                style: _AppTypography.captionStyle.copyWith(
                  color: _AppColors.black,
                  fontWeight: FontWeight.w500,
                  height: 1.0,
                ),
              ),
              const Spacer(),
              SizedBox(
                width: 28,
                height: 28,
                child: icon != null
                    ? Icon(icon?.icon, color: _AppColors.black, size: iconSize)
                    : null, //
              ),
            ],
          ),
        ),
      ],
    );
  }
}
