import 'package:flutter/material.dart';
import 'package:food_swift/core/theming/app_colors.dart';
import 'package:food_swift/core/theming/text_styles.dart';

class AppButton extends StatelessWidget {
  final String buttonText;
  final Color? buttonColor;
  final TextStyle? textStyle;
  final double? buttonWidth;
  final VoidCallback onPressed;
  final double? horizontalPadding;
  final double? verticalPadding;
  final double? borderRadius;
  const AppButton({
    super.key,
    required this.buttonText,
    this.buttonColor,
    this.textStyle,
    this.buttonWidth,
    required this.onPressed,
    this.horizontalPadding,
    this.verticalPadding,
    this.borderRadius,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        width: buttonWidth ?? double.infinity,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(borderRadius ?? 12),
          color: buttonColor ?? LightAppColors.primary,
        ),
        padding: EdgeInsets.symmetric(vertical: 10),
        child: Center(
          child: Text(
            buttonText,
            style: textStyle ?? TextStyles.font14BlackBold,
          ),
        ),
      ),
    );
  }
}
