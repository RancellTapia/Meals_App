import 'package:flutter/material.dart';

import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';

import 'package:meals/config/models/models.dart';
import 'package:meals/presentation/widgets/widgets.dart';

class _AppColors {
  static const Color primary = Color(0xFF0A4A4B);
  static const Color secondary = Color(0xFFEFF8F8);
  static const Color white = Color(0xFFFFFFFF);
  static const Color black = Color(0xFF000000);
  static const Color grey = Color(0xFF979797);
}

class _AppTypography {
  static const double heading1 = 24.0;
  static const double heading2 = 20.0;
  static const double bodyText = 18.0;

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
}

class TakeAPhotoScreen extends StatelessWidget {
  const TakeAPhotoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: _AppColors.white,
        title: Text(
          'Take a Photo',
          style: _AppTypography.h3.copyWith(
            color: _AppColors.black,
            fontWeight: FontWeight.w500,
          ),
        ),
        leading: IconButton(
            icon: FaIcon(FontAwesomeIcons.chevronLeft,
                size: 24, color: _AppColors.black),
            onPressed: () => Navigator.pop(context)),
      ),
      body: _TakeAPhotoView(),
    );
  }
}

class _TakeAPhotoView extends StatefulWidget {
  const _TakeAPhotoView({
    super.key,
  });

  @override
  State<_TakeAPhotoView> createState() => _TakeAPhotoViewState();
}

class _TakeAPhotoViewState extends State<_TakeAPhotoView> {
  bool hasPhoto = false;

  void _takePhoto() {
    setState(() {
      hasPhoto = true;
    });
  }

  void _retakePhoto() {
    setState(() {
      hasPhoto = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: _AppColors.white,
      child: Stack(children: [
        Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Container(
                //TODO: Replace with barcode image
                height: 300,
                width: double.infinity,
                color: _AppColors.grey,
              ),
            ),
          ],
        ),
        Positioned(
          bottom: 40,
          left: 0,
          right: 0,
          child: SizedBox(
            width: MediaQuery.of(context).size.width,
            child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    if (!hasPhoto) ...[
                      GestureDetector(
                        onTap: _takePhoto,
                        child: Container(
                          width: 122,
                          height: 122,
                          decoration: BoxDecoration(
                              color: _AppColors.secondary,
                              borderRadius: BorderRadius.circular(65)),
                          child: Center(
                            child: FaIcon(FontAwesomeIcons.camera,
                                size: 48, color: _AppColors.primary),
                          ),
                        ),
                      )
                    ],
                    if (hasPhoto) ...[
                      ActiveButton(
                          text: "Save",
                          onPressed: () => Navigator.pop(context)),
                      const SizedBox(height: 10),
                      OutlineButton(
                          text: "Retake Photo", onPressed: _retakePhoto),
                    ]
                  ],
                )),
          ),
        ),
      ]),
    );
  }
}
