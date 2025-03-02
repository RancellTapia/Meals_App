import 'package:flutter/material.dart';

import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class _AppColors {
  static const Color primary = Color(0xFF0A4A4B);
  static const Color secondary = Color(0xFFEFF8F8);
}

class EditButton extends StatelessWidget {
  final VoidCallback onPressed;
  final double size;

  const EditButton({
    super.key,
    required this.onPressed,
    this.size = 32,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: size,
      height: size,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          backgroundColor: _AppColors.secondary,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(size * 0.125),
          ),
          padding: EdgeInsets.zero, //
        ),
        child: FaIcon(FontAwesomeIcons.solidPenToSquare,
            size: size * 0.625, color: _AppColors.primary),
      ),
    );
  }
}
