import 'package:flutter/material.dart';
import 'package:food_swift/core/routing/app_router.dart';
import 'package:food_swift/core/routing/routes.dart';
import 'package:responsive_framework/responsive_framework.dart';

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
      builder: (context, child) => ResponsiveBreakpoints.builder(
        child: child!,
        breakpoints: const [
          Breakpoint(start: 0, end: 850, name: MOBILE),
          Breakpoint(start: 851, end: 1080, name: TABLET),
          Breakpoint(start: 1081, end: 1920, name: DESKTOP),
          Breakpoint(start: 1921, end: double.infinity, name: '4K'),
        ],
      ),
    );
  }
}
