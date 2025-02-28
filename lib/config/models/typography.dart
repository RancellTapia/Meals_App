import 'package:flutter/material.dart';
import 'package:meals/config/models/colors.dart';

class AppTypography {
  static const double heading1 = 24.0;
  static const double heading2 = 20.0;
  static const double bodyText = 18.0;
  static const double caption = 14.0;

  static const TextStyle h1 = TextStyle(
    fontSize: 32,
    fontWeight: FontWeight.bold,
    color: AppColors.black,
  );

  static const TextStyle h2 = TextStyle(
    fontSize: heading1,
    fontWeight: FontWeight.bold,
    color: AppColors.black,
  );

  static const TextStyle h3 = TextStyle(
    fontSize: heading2,
    fontWeight: FontWeight.w600,
    color: AppColors.black,
  );

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
