import 'package:credpal/core/constants/app_color.dart';
import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({
    super.key,
    this.title,
    this.useLeading = true,
    this.useBackButton = false,
    this.actions,
    this.backgroundColor,
    this.elevation = 0.0,
    this.useSkipButton = false,
    this.titleText = '',
    this.titleColor,
    this.showNotificationButton = false,
    this.showProfileImage = false,
    this.hasNotification = false,
    this.height,
    this.bottom,
    this.leading,
    this.centerTitle = true,
    this.flexibleSpace,
  });

  final Widget? title;
  final bool useLeading;
  final bool useBackButton;
  final List<Widget>? actions;
  final Color? backgroundColor;
  final double elevation;
  final bool useSkipButton;
  final String titleText;
  final Color? titleColor;
  final bool showNotificationButton;
  final bool showProfileImage;
  final bool hasNotification;
  final double? height;
  final PreferredSizeWidget? bottom;
  final Widget? leading;
  final bool? centerTitle;
  final Widget? flexibleSpace;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return AppBar(
      scrolledUnderElevation: 0,
      toolbarHeight: height ?? kToolbarHeight,
      title: (title != null)
          ? title ?? const SizedBox.shrink()
          : Text(
              titleText,
              style: theme.textTheme.headlineMedium?.copyWith(
                fontWeight: FontWeight.w600,
                fontSize: 20,
                color: titleColor ?? AppColor.black,
              ),
            ),
      centerTitle: centerTitle,
      leading: (useLeading == true)
          ? (useBackButton == true)
                ? (Navigator.canPop(context))
                      ? IconButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          color: AppColor.white,
                          iconSize: 30,
                          icon: const Icon(Icons.chevron_left),
                        )
                      : const SizedBox.shrink()
                : const SizedBox.shrink()
          : leading,
      actions: actions,
      backgroundColor: backgroundColor ?? theme.appBarTheme.backgroundColor,
      elevation: elevation,
      automaticallyImplyLeading: false,
      bottom: bottom,
      flexibleSpace: flexibleSpace,
    );
  }

  @override
  Size get preferredSize {
    final bottomHeight = bottom?.preferredSize.height ?? 0.0;
    return Size.fromHeight((height ?? kToolbarHeight) + bottomHeight);
  }
}
