import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:food_swift/core/helpers/extension.dart';
import 'package:food_swift/core/routing/routes.dart';
import 'package:food_swift/core/shared_widgets/app_button.dart';
import 'package:food_swift/core/theming/text_styles.dart';

class OnboardingComponent extends StatelessWidget {
  final int pageIndex;
  final String svgAsset;
  final String title;
  final String description;
  final Widget pageIndicator;
  final VoidCallback onNextPressed;

  const OnboardingComponent({
    super.key,
    required this.pageIndex,
    required this.svgAsset,
    required this.title,
    required this.description,
    required this.pageIndicator,
    required this.onNextPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        if (pageIndex == 0)
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: GestureDetector(
              onTap: () {
                context.pushNamedAndRemoveUntil(
                  Routes.login,
                  predicate: (route) => route.isFirst,
                );
              },
              child: Align(
                alignment: AlignmentDirectional.topEnd,
                child: Text('Skip', style: TextStyles.font16BlackBold),
              ),
            ),
          ),
        SizedBox(height: 8),
        SvgPicture.asset(svgAsset),
        SizedBox(height: 20),
        Text(title, style: TextStyles.font28BlackBold),
        SizedBox(height: 4),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Text(
            description,
            style: TextStyles.font16BlackRegular,
            textAlign: TextAlign.center,
          ),
        ),
        const Spacer(),
        SizedBox(height: 48, child: pageIndicator),
        SizedBox(height: 12),
        if (pageIndex == 1) ...[
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                AppButton(
                  buttonText: 'Skip',
                  onPressed: () {},
                  buttonColor: Colors.transparent,
                  buttonWidth: 84,
                ),
                AppButton(
                  buttonText: 'Next',
                  onPressed: onNextPressed,
                  buttonWidth: 84,
                ),
              ],
            ),
          ),
        ] else ...[
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: AppButton(buttonText: 'Next', onPressed: onNextPressed),
          ),
          SizedBox(height: 8),
        ],
      ],
    );
  }
}
