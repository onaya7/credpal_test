import 'package:credpal/core/constants/app_color.dart';
import 'package:credpal/core/constants/app_size.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    required this.onPressed,
    this.text = 'CredPal',
    this.textColor = AppColor.white,
    this.textFontWeight = FontWeight.w600,
    this.textSize = 16,
    this.sufficIconPath,
    this.leadingIconPath,
    this.leadingImagePath,
    this.iconWidth = 20,
    this.suffixIconColor = AppColor.black,
    this.iconHeight = 20,
    this.hasLeadingIcon = false,
    this.useLeadingImage = false,
    this.hasSuffixIcon = false,
    this.borderColor,
    this.borderRadius = 4,
    this.height,
    this.width,
    this.isLoading = false,
    this.backgroundColor = AppColor.primary,
    this.disabled = false,
    super.key,
  });

  final String text;
  final Color? textColor;
  final double textSize;
  final FontWeight? textFontWeight;
  final String? sufficIconPath;
  final String? leadingIconPath;
  final String? leadingImagePath;
  final double? iconWidth;
  final Color suffixIconColor;
  final double? iconHeight;
  final bool hasSuffixIcon;
  final bool hasLeadingIcon;
  final bool useLeadingImage;
  final Color? borderColor;
  final double borderRadius;
  final double? height;
  final double? width;
  final void Function() onPressed;
  final bool isLoading;
  final Color? backgroundColor;
  final bool disabled;

  void _handleButtonPress() {
    // UiHelpers.hapticFeedback(FeedbackType.medium);
    onPressed();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      height: height ?? 40,
      width: width ?? AppSizes.screenWidth(context),
      duration: const Duration(milliseconds: 200),
      decoration: BoxDecoration(
        color: disabled
            ? AppColor.purple100
            : isLoading
            ? backgroundColor?.withValues(alpha: 0.7)
            : backgroundColor,
        borderRadius: BorderRadius.circular(borderRadius),
      ),
      child: ElevatedButton(
        style: ButtonStyle(
          side: WidgetStateProperty.all<BorderSide>(BorderSide(color: borderColor ?? Colors.transparent)),
          elevation: WidgetStateProperty.all<double>(0),
          backgroundColor: WidgetStateProperty.all<Color>(Colors.transparent),
          shape: WidgetStateProperty.all<RoundedRectangleBorder>(
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(borderRadius)),
          ),
        ),
        onPressed: isLoading || disabled ? null : _handleButtonPress,
        child: isLoading
            ? const Center(child: CircularProgressIndicator.adaptive( backgroundColor: AppColor.white, strokeWidth: 2))
            : Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    text,
                    style: TextStyle(color: textColor, fontSize: textSize, fontWeight: textFontWeight),
                  ),
                ],
              ),
      ),
    );
  }
}
