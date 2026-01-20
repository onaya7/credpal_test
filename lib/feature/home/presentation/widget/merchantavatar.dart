import 'package:credpal/core/constants/app_color.dart';
import 'package:credpal/core/constants/app_size.dart';
import 'package:flutter/material.dart';

class MerchantAvatar extends StatelessWidget {
  final String name;
  final String logoUrl;
  final Color colorCode;
  final bool isOnline;
  const MerchantAvatar({
    super.key,
    required this.name,
    required this.logoUrl,
    required this.colorCode,
    this.isOnline = false,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Stack(
          children: [
            Container(
              decoration: BoxDecoration(color: colorCode, borderRadius: BorderRadius.circular(100)),
              height: 60,
              width: 60,
              child: Container(alignment: Alignment.center, child: Image.asset(logoUrl, height: 45, width: 45)),
            ),
            if (isOnline)
              Positioned(
                right: 0,
                child: Container(
                  decoration: BoxDecoration(color: AppColor.white, borderRadius: BorderRadius.circular(100)),
                  height: 16,
                  width: 16,
                  alignment: Alignment.center,
                  child: Container(
                    height: 11,
                    width: 11,
                    decoration: BoxDecoration(color: AppColor.green100, borderRadius: BorderRadius.circular(100)),
                  ),
                ),
              ),
          ],
        ),
        AppSizes.h(8),
        Text(
          name,
          overflow: TextOverflow.ellipsis,
          style: TextStyle(color: AppColor.black, fontSize: 12, fontWeight: FontWeight.w500),
        ),
      ],
    );
  }
}
