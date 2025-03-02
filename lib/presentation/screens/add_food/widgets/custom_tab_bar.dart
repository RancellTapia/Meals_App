import 'package:flutter/material.dart';

class _AppColors {
  static const Color primary = Color(0xFF0A4A4B);
  static const Color secondary = Color(0xFFEFF8F8);
  static const Color neutral = Color(0xFFEDEEF1);
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

class CustomTabBar extends StatelessWidget {
  final TabController tabController;
  final List<String> tabs;

  const CustomTabBar({
    super.key,
    required this.tabController,
    required this.tabs,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: _AppColors.neutral,
      height: 32,
      child: AnimatedBuilder(
          animation: tabController,
          builder: (context, _) {
            return TabBar(
              controller: tabController,
              isScrollable: true,
              tabAlignment: TabAlignment.center,
              indicatorColor: _AppColors.primary,
              indicatorSize: TabBarIndicatorSize.label,
              labelColor: _AppColors.primary,
              labelPadding: EdgeInsets.zero,
              padding: EdgeInsets.zero,
              dividerColor: Colors.transparent,
              unselectedLabelColor: _AppColors.grey,
              tabs: List.generate(tabs.length, (index) {
                bool isSelected = tabController.index == index;
                return Tab(
                  child: Container(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 22, vertical: 5),
                    decoration: BoxDecoration(
                      color: isSelected
                          ? _AppColors.secondary
                          : _AppColors.neutral,
                    ),
                    child: Text(
                      tabs[index],
                      style: _AppTypography.captionStyle.copyWith(
                        color:
                            isSelected ? _AppColors.primary : _AppColors.grey,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                );
              }),
            );
          }),
    );
  }
}
