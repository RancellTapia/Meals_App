import 'package:flutter/material.dart';
import 'package:meals/config/models/models.dart';

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
        backgroundColor: AppColors.secondary,
        padding: EdgeInsets.symmetric(
          horizontal: 16,
          vertical: 6,
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30),
        ),
      ),
      child: Text(
        text,
        style: AppTypography.captionStyle.copyWith(
            color: AppColors.primary, fontWeight: FontWeight.w600, height: 1.0),
      ),
    );
  }
}
