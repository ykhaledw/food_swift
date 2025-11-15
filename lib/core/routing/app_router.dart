import 'package:flutter/material.dart';

class AppRouter {
  Route generateRoute(RouteSettings settings){
    switch(settings.name){
      // case Routes.onBoarding:
      //   return MaterialPageRoute(builder: (_)=> const OnBoardingScreen());
      default:
        return MaterialPageRoute(builder: (_)=> const Scaffold(
          body: Center(
            child: Text('No route defined'),
          ),
        ));
    }
  }
}