import 'package:flutter/material.dart';
import 'package:food_swift/core/routing/app_router.dart';
import 'package:food_swift/core/routing/routes.dart';

class FoodSwift extends StatelessWidget {
  final AppRouter appRouter;
  const FoodSwift({super.key, required this.appRouter});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Food Swift',
      onGenerateRoute: appRouter.generateRoute,
      debugShowCheckedModeBanner: false,
      initialRoute: Routes.onBoarding,
    );
  }
}
