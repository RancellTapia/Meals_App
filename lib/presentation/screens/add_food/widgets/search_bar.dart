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

class SearchBarWidget extends StatelessWidget {
  const SearchBarWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12),
      child: SizedBox(
        height: 40,
        child: TextField(
          decoration: InputDecoration(
            prefixIcon: const Icon(
              Icons.search,
              color: _AppColors.grey,
              size: 24,
            ),
            hintText: "Search food...",
            hintStyle: _AppTypography.captionStyle.copyWith(
              color: _AppColors.grey,
              fontWeight: FontWeight.w500,
            ),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(5),
              borderSide: BorderSide(color: _AppColors.grey),
            ),
          ),
        ),
      ),
    );
  }
}
