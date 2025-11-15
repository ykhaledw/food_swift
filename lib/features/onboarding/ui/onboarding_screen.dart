import 'package:flutter/material.dart';
import 'package:food_swift/features/onboarding/ui/widgets/onboarding_component.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  static PageController pageController = PageController(initialPage: 0);
  @override
  Widget build(BuildContext context) {
    final Widget pageIndicator = SmoothPageIndicator(
      controller: pageController,
      count: 3,
      effect: ExpandingDotsEffect(
        activeDotColor: Colors.black,
        dotColor: Colors.grey,
        dotHeight: 8,
        dotWidth: 8,
      ),
      onDotClicked: (index) {
        pageController.animateToPage(
          index,
          duration: const Duration(milliseconds: 500),
          curve: Curves.easeInOut,
        );
      },
    );
    return Scaffold(
      body: SafeArea(
        child: PageView(
          children: [
            OnboardingComponent(
              pageIndex: 0,
              svgAsset: 'assets/svg/first_onboarding.svg',
              title: 'Browse Restaurants',
              description:
                  'Find your favorite local restaurants and discover new culinary gems right at your fingertips',
              pageIndicator: pageIndicator,
              onNextPressed: () {},
            ),
            OnboardingComponent(
              pageIndex: 0,
              svgAsset: 'assets/svg/second_onboarding.svg',
              title: 'Order Your Favorite Food',
              description:
                  'Select from a wide variety of dishes and customize your meals exactly how you like them',
              pageIndicator: pageIndicator,
              onNextPressed: () {},
            ),
            OnboardingComponent(
              pageIndex: 0,
              svgAsset: 'assets/svg/third_onboarding.svg',
              title: 'Fast Delivery',
              description:
                  'Track your order in real-time and get hot, fresh food delivered to your doorstep',
              pageIndicator: pageIndicator,
              onNextPressed: () {},
            ),
          ],
        ),
      ),
    );
  }
}
