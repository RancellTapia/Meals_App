import 'package:flutter/material.dart';

import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class _AppColors {
  static const Color primary = Color(0xFF0A4A4B);
  static const Color secondary = Color(0xFFEFF8F8);
}

class AddButton extends StatelessWidget {
  final VoidCallback onPressed;

  const AddButton({
    super.key,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 32,
      height: 32,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          backgroundColor: _AppColors.secondary,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(4),
          ),
          padding: EdgeInsets.zero, //
        ),
        child:
            FaIcon(FontAwesomeIcons.plus, size: 20, color: _AppColors.primary),
      ),
    );
  }
}
