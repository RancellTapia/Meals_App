import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';

class _AppColors {
  static const Color black = Color(0xFF000000);
  static const Color grey = Color(0xFF979797);
}

class _AppTypography {
  static const double caption = 14.0;

  static const TextStyle captionStyle = TextStyle(
    fontSize: caption,
    fontWeight: FontWeight.w300,
    color: _AppColors.grey,
  );
}

class AddImage extends StatelessWidget {
  final VoidCallback onTap;

  const AddImage({super.key, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: onTap,
        child: DottedBorder(
          borderType: BorderType.RRect,
          dashPattern: [12, 10],
          strokeWidth: 2,
          color: _AppColors.grey,
          radius: Radius.circular(12),
          child: ClipRRect(
            borderRadius: BorderRadius.all(Radius.circular(12)),
            child: SizedBox(
              width: 74,
              height: 74,
              child: Center(
                child: Text(
                  "Add\nImage",
                  textAlign: TextAlign.center,
                  style: _AppTypography.captionStyle.copyWith(
                    color: _AppColors.black,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            ),
          ),
        ));
  }
}
