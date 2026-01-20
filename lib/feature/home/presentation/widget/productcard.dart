import 'package:credpal/core/constants/app_color.dart';
import 'package:credpal/gen/assets.gen.dart';
import 'package:flutter/material.dart';

class ProductCard extends StatelessWidget {
  const ProductCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 161,
      height: 174,
      decoration: BoxDecoration(color: AppColor.white, borderRadius: BorderRadius.circular(10)),
      child: Center(child: Assets.icons.scan.svg(colorFilter: ColorFilter.mode(AppColor.black, BlendMode.srcIn))),
    );
  }
}
