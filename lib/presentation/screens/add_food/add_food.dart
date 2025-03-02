import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:meals/presentation/screens/add_food/widgets/widgets.dart';
import 'package:meals/presentation/widgets/widgets.dart';

class _AppColors {
  static const Color primary = Color(0xFF0A4A4B);
  static const Color white = Color(0xFFFFFFFF);
  static const Color black = Color(0xFF000000);
  static const Color grey = Color(0xFF979797);
}

class _AppTypography {
  static const double heading2 = 20.0;
  static const double caption = 14.0;

  static const TextStyle h3 = TextStyle(
    fontSize: heading2,
    fontWeight: FontWeight.w600,
    color: _AppColors.black,
  );

  static const TextStyle captionStyle = TextStyle(
    fontSize: caption,
    fontWeight: FontWeight.w300,
    color: _AppColors.grey,
  );
}

class AddFoodScreen extends StatefulWidget {
  const AddFoodScreen({super.key});

  @override
  _AddFoodScreenState createState() => _AddFoodScreenState();
}

class _AddFoodScreenState extends State<AddFoodScreen>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 4, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Add Food",
          style: _AppTypography.h3.copyWith(
            color: _AppColors.black,
            fontWeight: FontWeight.w500,
          ),
        ),
        backgroundColor: _AppColors.white,
        elevation: 0,
        leading: IconButton(
          icon: FaIcon(FontAwesomeIcons.chevronLeft,
              size: 24, color: _AppColors.black),
          onPressed: () => Navigator.pop(context),
        ),
        actions: [
          IconButton(
            icon: FaIcon(FontAwesomeIcons.barcode,
                size: 24, color: _AppColors.primary),
            onPressed: () {},
          ),
        ],
      ),
      body: Column(
        children: [
          SearchBarWidget(),
          const SizedBox(height: 16),
          CustomTabBar(tabController: _tabController, tabs: [
            "My Favorites",
            "View All",
            "Recent",
            "My Food",
          ]),
          Expanded(
            child: TabBarView(
              controller: _tabController,
              children: [
                _myFavories(),
                _buildFoodList(),
                _buildFoodList(),
                _buildFoodList(hasAddMealButton: true),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _myFavories() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        SizedBox(height: 80),
        FaIcon(FontAwesomeIcons.star, size: 120, color: _AppColors.primary),
        const SizedBox(height: 36),
        Text(
          "No Favorite Food",
          style: _AppTypography.h3.copyWith(
            color: _AppColors.black,
            fontWeight: FontWeight.w500,
          ),
        ),
        const SizedBox(height: 16),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 60),
          child: Text(
            "To add food to your list, select them by clicking the star icon.",
            textAlign: TextAlign.center,
            style: _AppTypography.captionStyle.copyWith(
              color: _AppColors.primary,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildFoodList(
      {bool hasAddButton = true, bool hasAddMealButton = false}) {
    final List<Map<String, dynamic>> foodItems = [
      {"name": "Coca-cola", "calories": "160 cal", "isFavorite": true},
      {"name": "A Short Food Name", "calories": "150 cal", "isFavorite": false},
      {
        "name": "A Long Food Name ABCDFG...",
        "calories": "160 cal",
        "isFavorite": true
      },
      {
        "name": "A Long Food Name ABCDFG...",
        "calories": "180 cal",
        "isFavorite": false
      },
      {"name": "A Short Food Name", "calories": "180 cal", "isFavorite": false},
      {
        "name": "A Long Food Name ABCDFG...",
        "calories": "180 cal",
        "isFavorite": false
      },
      {"name": "A Short Food Name", "calories": "180 cal", "isFavorite": true},
      {
        "name": "A Long Food Name ABCDFG...",
        "calories": "180 cal",
        "isFavorite": true
      },
      {"name": "A Short Food Name", "calories": "180 cal", "isFavorite": true},
    ];

    return Stack(
      children: [
        ListView.separated(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
          itemCount: foodItems.length,
          separatorBuilder: (_, __) => const SizedBox(height: 20),
          itemBuilder: (context, index) {
            final food = foodItems[index];
            return FoodItem(
              name: food["name"],
              calories: food["calories"],
              isFavorite: food["isFavorite"],
            );
          },
        ),
        Positioned(
          bottom: 40,
          left: 0,
          right: 0,
          child: SizedBox(
            width: MediaQuery.of(context).size.width,
            child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    if (hasAddMealButton) ...[
                      Expanded(
                          child: OutlineButton(
                              text: "Add Meal", onPressed: () {})),
                      const SizedBox(width: 10),
                    ],
                    Expanded(
                      child:
                          ActiveButton(text: "Add New Food", onPressed: () {}),
                    ),
                  ],
                )),
          ),
        ),
      ],
    );
  }
}
