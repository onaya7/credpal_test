import 'package:credpal/core/constants/app_color.dart';
import 'package:credpal/core/constants/app_size.dart';
import 'package:flutter/material.dart';

class ProductCard extends StatelessWidget {
  final String title;
  final String price;
  final String oldPrice;
  final String imagePath;
  final String logoPath;
  const ProductCard({
    required this.title,
    required this.price,
    required this.oldPrice,
    required this.imagePath,
    required this.logoPath,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: 161,
          height: 174,
          decoration: BoxDecoration(color: AppColor.white, borderRadius: BorderRadius.circular(10)),
          child: Container(
            padding: EdgeInsets.fromLTRB(10, 5, 10, 5),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 96,
                  width: 112,
                  alignment: Alignment.center,
                  child: Image.asset(imagePath, fit: BoxFit.cover),
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        title,
                        overflow: TextOverflow.ellipsis,

                        style: TextStyle(color: AppColor.black, fontSize: 14, fontWeight: FontWeight.w700),
                      ),
                      AppSizes.h(4),
                      Row(
                        children: [
                          Text(
                            price,
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(color: AppColor.primary, fontSize: 14, fontWeight: FontWeight.w800),
                          ),
                          AppSizes.w(14),
                          Flexible(
                            child: Text(
                              oldPrice,
                              overflow: TextOverflow.ellipsis,
                              style: TextStyle(
                                color: AppColor.purple600,
                                fontSize: 12,
                                fontWeight: FontWeight.w500,
                                decoration: TextDecoration.lineThrough,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
        Positioned(
          top: 8,
          left: 8,
          child: Container(
            width: 50,
            height: 50,
            alignment: Alignment.center,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(100),
              color: AppColor.white,
              boxShadow: [BoxShadow(color: Colors.black.withValues(alpha: 0.1), blurRadius: 10, offset: Offset(0, 4))],
            ),
            child: Image.asset(logoPath, height: 30, width: 30),
          ),
        ),
      ],
    );
  }
}
