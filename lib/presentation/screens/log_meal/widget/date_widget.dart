import 'package:flutter/material.dart';

import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'package:meals/config/models/models.dart';

class _AppColors {
  static const Color primary = Color(0xFF0A4A4B);
  static const Color secondary = Color(0xFFEFF8F8);
  static const Color black = Color(0xFF000000);
  static const Color grey = Color(0xFF979797);
}

class _AppTypography {
  static const double bodyText = 18.0;

  static const TextStyle body = TextStyle(
    fontSize: bodyText,
    fontWeight: FontWeight.normal,
    color: AppColors.black,
  );
}

class DateWitget extends StatelessWidget {
  const DateWitget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: _AppColors.secondary,
      padding: const EdgeInsets.only(right: 8, left: 6, top: 28, bottom: 11),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          IconButton(
            icon: FaIcon(FontAwesomeIcons.chevronLeft,
                size: 24, color: _AppColors.black),
            onPressed: () {},
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(
                children: [
                  Text(
                    'Tue, Feb 25, 2025',
                    style: _AppTypography.body.copyWith(
                        color: _AppColors.black,
                        fontWeight: FontWeight.w400,
                        height: 1.3),
                  ),
                  Text(
                    'Today',
                    style: _AppTypography.body.copyWith(
                        color: _AppColors.grey,
                        fontWeight: FontWeight.w600,
                        height: 2.0),
                  ),
                ],
              ),
              SizedBox(
                width: 12,
              ),
              FaIcon(FontAwesomeIcons.calendar,
                  size: 24, color: _AppColors.primary),
            ],
          ),
          SizedBox(
            width: 25,
          )
        ],
      ),
    );
  }
}
