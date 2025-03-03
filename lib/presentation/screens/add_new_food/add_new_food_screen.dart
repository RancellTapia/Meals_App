import 'package:flutter/material.dart';

import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';

import 'package:meals/presentation/widgets/widgets.dart';

class _AppColors {
  static const Color white = Color(0xFFFFFFFF);
  static const Color black = Color(0xFF000000);
}

class _AppTypography {
  static const double heading2 = 20.0;

  static const TextStyle h3 = TextStyle(
    fontSize: heading2,
    fontWeight: FontWeight.w600,
    color: _AppColors.black,
  );
}

class AddNewFoodScreen extends StatelessWidget {
  const AddNewFoodScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: _AppColors.white,
        title: Text(
          'Add New Food',
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
      body: _AddNewFoodView(),
    );
  }
}

class _AddNewFoodView extends StatelessWidget {
  const _AddNewFoodView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: _AppColors.white,
      child: Stack(children: [
        SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    AddImage(onTap: () {
                      context.push('/take-photo');
                    }),
                    const SizedBox(width: 16),
                    Expanded(
                      child: CustomTextField(title: "Food Name"),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 40),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      child: CustomTextField(
                        title: "Serving Unit",
                        icon: FaIcon(FontAwesomeIcons.caretDown,
                            size: 20, color: _AppColors.black),
                      ),
                    ),
                    const SizedBox(width: 16),
                    Expanded(
                      child: CustomTextField(title: "Serving Size"),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 40),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Nutrition Value',
                      style: _AppTypography.h3.copyWith(
                          color: _AppColors.black,
                          fontWeight: FontWeight.w600,
                          height: 1),
                    ),
                    const SizedBox(height: 16),
                    CustomTextField(
                      title: "Calories",
                      isRequired: true,
                      showTitleAsLabel: true,
                    ),
                    const SizedBox(height: 20),
                    CustomTextField(
                      title: "Protein",
                      isRequired: true,
                      showTitleAsLabel: true,
                    ),
                    const SizedBox(height: 16),
                    CustomTextField(
                      title: "Total Fat",
                      isRequired: true,
                      showTitleAsLabel: true,
                    ),
                    const SizedBox(height: 16),
                    CustomTextField(
                      title: "Saturation Fat",
                      showTitleAsLabel: true,
                    ),
                    const SizedBox(height: 16),
                    CustomTextField(
                      title: "Monounsaturated Fat",
                      showTitleAsLabel: true,
                    ),
                    const SizedBox(height: 16),
                    CustomTextField(
                      title: "Saturation Fat",
                      showTitleAsLabel: true,
                    ),
                    const SizedBox(height: 16),
                    CustomTextField(
                      title: "Saturation Fat",
                      showTitleAsLabel: true,
                    ),
                    const SizedBox(height: 120),
                  ],
                ),
              )
            ],
          ),
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
                    ActiveButton(
                        text: "Save", onPressed: () => Navigator.pop(context)),
                  ],
                )),
          ),
        ),
      ]),
    );
  }
}
