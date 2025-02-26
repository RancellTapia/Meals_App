import 'package:flutter/material.dart';
import 'package:meals/config/models/models.dart';
import 'package:meals/presentation/screens/meal_info/widget/widget.dart';

class MealInfoCard extends StatelessWidget {
  const MealInfoCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          _CardInfo(
            title: 'Date',
            icon: Icons.calendar_today,
            value: 'Tue, Feb 25, 2025',
          ),
          const SizedBox(height: 16),
          SizedBox(
            width: double.infinity,
            child: Row(
              children: [
                Expanded(
                  child: _CardInfo(
                    title: 'Meal Type',
                    icon: Icons.keyboard_arrow_down_sharp,
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
          const SizedBox(height: 16),
          Counter(
            label: 'Serving',
          ),
          const SizedBox(height: 16),
          Counter(
            label: 'Fractional',
          ),
          const SizedBox(height: 30),
        ],
      ),
    );
  }
}

class _CardInfo extends StatelessWidget {
  final String title;
  final String value;
  final IconData? icon;
  final double iconSize;

  const _CardInfo({
    super.key,
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
          style: AppTypography.captionStyle.copyWith(
            color: AppColors.textPrimary,
            fontWeight: FontWeight.w600,
            height: 1.0,
          ),
        ),
        Container(
          margin: const EdgeInsets.only(top: 10),
          padding: const EdgeInsets.all(10),
          decoration: BoxDecoration(
            color: AppColors.background ?? Colors.white,
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
                style: AppTypography.captionStyle.copyWith(
                  color: AppColors.textPrimary,
                  fontWeight: FontWeight.w500,
                  height: 1.0,
                ),
              ),
              const Spacer(),
              SizedBox(
                width: 28,
                height: 28,
                child: icon != null
                    ? Icon(icon, color: AppColors.textPrimary, size: iconSize)
                    : null, //
              ),
            ],
          ),
        ),
      ],
    );
  }
}
