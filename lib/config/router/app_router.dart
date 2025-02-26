import 'package:go_router/go_router.dart';

import 'package:meals/presentation/screens/screens.dart';

final appRouter = GoRouter(routes: [
  GoRoute(
    path: '/',
    builder: (context, state) => const HomeScreen(),
  ),
  GoRoute(
    path: '/meal-info/:mealName',
    builder: (context, state) {
      final mealName = state.pathParameters['mealName']!;
      return MealInfo(mealName: mealName);
    },
  ),
]);
