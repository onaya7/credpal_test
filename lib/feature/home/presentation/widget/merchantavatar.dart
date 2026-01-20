import 'package:credpal/core/constants/app_color.dart';
import 'package:credpal/core/constants/app_size.dart';
import 'package:flutter/material.dart';

class MerchantAvatar extends StatelessWidget {
  const MerchantAvatar({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          decoration: BoxDecoration(color: AppColor.purple500, borderRadius: BorderRadius.circular(100)),
          height: 60,
          width: 60,
        ),
        AppSizes.h(8),
        Text(
          'Justrite',
          style: TextStyle(color: AppColor.black, fontSize: 12, fontWeight: FontWeight.w500),
        ),
      ],
    );
  }
}
