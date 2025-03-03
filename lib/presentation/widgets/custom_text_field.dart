import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class _AppColors {
  static const Color white = Color(0xFFFFFFFF);
  static const Color black = Color(0xFF000000);
  static const Color grey = Color(0xFF979797);
  static const Color error = Color(0xFFE22424);
}

class _AppTypography {
  static const double caption = 14.0;
  static const double subTitle = 12.0;

  static const TextStyle captionStyle = TextStyle(
    fontSize: caption,
    fontWeight: FontWeight.w300,
    color: _AppColors.grey,
  );

  static const TextStyle subTitleStyle = TextStyle(
    fontSize: subTitle,
    fontWeight: FontWeight.w300,
    color: _AppColors.grey,
  );
}

class CustomTextField extends StatelessWidget {
  final String title;
  final String? value;
  final FaIcon? icon;
  final double? iconSize;
  final bool showTitleAsLabel;
  final bool isRequired;

  const CustomTextField(
      {super.key,
      required this.title,
      this.value,
      this.icon,
      this.iconSize,
      this.showTitleAsLabel = false,
      this.isRequired = false});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (!showTitleAsLabel) ...[
          Text(
            title,
            style: _AppTypography.captionStyle.copyWith(
              color: _AppColors.black,
              fontWeight: FontWeight.w600,
            ),
          )
        ],
        Container(
          height: 50,
          margin: const EdgeInsets.only(top: 8),
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
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              if (showTitleAsLabel) ...[
                Row(
                  children: [
                    const SizedBox(
                      width: 14,
                    ),
                    Text(
                      title,
                      style: _AppTypography.subTitleStyle.copyWith(
                          color: _AppColors.grey,
                          fontWeight: FontWeight.w400,
                          height: 1),
                    ),
                    if (isRequired) ...[
                      Text(
                        "*",
                        style: _AppTypography.subTitleStyle.copyWith(
                            color: _AppColors.error,
                            fontWeight: FontWeight.w400,
                            height: 1),
                      ),
                    ]
                  ],
                ),
                const SizedBox(
                  height: 4,
                )
              ],
              SizedBox(
                height: 22,
                child: TextField(
                  decoration: InputDecoration(
                    contentPadding: const EdgeInsets.symmetric(horizontal: 14),
                    filled: true,
                    fillColor: _AppColors.white,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                      borderSide: BorderSide.none,
                    ),
                    hintText: "--",
                    hintStyle: _AppTypography.captionStyle.copyWith(
                      color: _AppColors.black,
                    ),
                    suffixIcon: icon != null
                        ? Icon(icon?.icon,
                            color: _AppColors.black, size: iconSize)
                        : null,
                  ),
                  style: _AppTypography.captionStyle.copyWith(
                      color: _AppColors.black,
                      fontWeight: FontWeight.w500,
                      height: 1),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
