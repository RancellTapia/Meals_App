import 'package:go_router/go_router.dart';

import 'package:meals/presentation/screens/screens.dart';

final appRouter = GoRouter(routes: [
  GoRoute(
    path: '/',
    builder: (context, state) => const LogMealScreen(),
  ),
  GoRoute(
    path: '/fool-detail/:mealName',
    builder: (context, state) {
      final mealName = state.pathParameters['mealName']!;
      return FoodDetailScreen(mealName: mealName);
    },
  ),
  GoRoute(
    path: '/add-food',
    builder: (context, state) => const AddFoodScreen(),
  ),
  GoRoute(
    path: '/scan-barcode',
    builder: (context, state) => const ScanBarcodeScreen(),
  ),
  GoRoute(
    path: '/add-new-food',
    builder: (context, state) => const AddNewFoodScreen(),
  ),
]);
