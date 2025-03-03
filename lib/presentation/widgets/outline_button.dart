import 'package:flutter/material.dart';

class _AppColors {
  static const Color primary = Color(0xFF0A4A4B);
  static const Color white = Color(0xFFFFFFFF);
}

class _AppTypography {
  static const double bodyText = 18.0;

  static const TextStyle body = TextStyle(
    fontSize: bodyText,
    fontWeight: FontWeight.normal,
  );
}

class OutlineButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;

  const OutlineButton({
    super.key,
    required this.text,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 48,
      child: TextButton(
        style: TextButton.styleFrom(
          backgroundColor: _AppColors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30),
            side: BorderSide(color: _AppColors.primary, width: 1),
          ),
        ),
        onPressed: onPressed,
        child: Text(
          text,
          style: _AppTypography.body
              .copyWith(color: _AppColors.primary, fontWeight: FontWeight.w500),
        ),
      ),
    );
  }
}
