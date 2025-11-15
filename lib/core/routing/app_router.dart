import 'package:flutter/material.dart';
import 'package:food_swift/core/routing/routes.dart';
import 'package:food_swift/features/onboarding/ui/onboarding_screen.dart';

class AppRouter {
  Route generateRoute(RouteSettings settings){
    switch(settings.name){
      case Routes.onBoarding:
        return MaterialPageRoute(builder: (_)=> const OnboardingScreen());
      default:
        return MaterialPageRoute(builder: (_)=> const Scaffold(
          body: Center(
            child: Text('No route defined'),
          ),
        ));
    }
  }
}