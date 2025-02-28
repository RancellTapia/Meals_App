import 'package:flutter/material.dart';

import 'package:meals/config/models/models.dart';

class _AppColors {
  static const Color primary = Color(0xFF0A4A4B);
  static const Color secondary = Color(0xFFEFF8F8);
}

class _AppTypography {
  static const double caption = 14.0;

  static const TextStyle captionStyle = TextStyle(
    fontSize: caption,
    fontWeight: FontWeight.w300,
    color: AppColors.grey,
  );
}

class RoundedButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;

  const RoundedButton({
    super.key,
    required this.text,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      style: TextButton.styleFrom(
        backgroundColor: _AppColors.secondary,
        padding: EdgeInsets.symmetric(
          horizontal: 16,
          vertical: 8,
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30),
        ),
      ),
      child: Text(
        text,
        style: _AppTypography.captionStyle.copyWith(
            color: _AppColors.primary,
            fontWeight: FontWeight.w500,
            height: 1.0),
      ),
    );
  }
}
