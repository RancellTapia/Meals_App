import 'package:flutter/material.dart';

import 'package:meals/config/models/models.dart';

import 'package:meals/presentation/screens/home/widget/date_widget.dart';

import 'package:meals/presentation/screens/home/widget/graphic_info.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            'Meals',
            style: AppTypography.h2.copyWith(
              color: AppColors.textPrimary,
              fontWeight: FontWeight.w500,
            ),
          ),
          leading: IconButton(
            icon: const Icon(Icons.arrow_back_ios),
            onPressed: () {},
          ),
        ),
        body: _HomeScreenView());
  }
}

class _HomeScreenView extends StatelessWidget {
  const _HomeScreenView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [DateWitget(), GraphipInfo()],
      ),
    );
  }
}
