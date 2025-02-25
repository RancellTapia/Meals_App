import 'package:flutter/material.dart';
import 'package:meals/config/models/colors.dart';

class AppTypography {
  static const double heading1 = 24.0;
  static const double heading2 = 20.0;
  static const double bodyText = 16.0;
  static const double caption = 12.0;

  static const TextStyle h1 = TextStyle(
    fontSize: heading1,
    fontWeight: FontWeight.bold,
    color: AppColors.textPrimary,
  );

  static const TextStyle h2 = TextStyle(
    fontSize: heading2,
    fontWeight: FontWeight.w600,
    color: AppColors.textPrimary,
  );

  static const TextStyle body = TextStyle(
    fontSize: bodyText,
    fontWeight: FontWeight.normal,
    color: AppColors.textPrimary,
  );

  static const TextStyle captionStyle = TextStyle(
    fontSize: caption,
    fontWeight: FontWeight.w300,
    color: AppColors.textSecondary,
  );
}
