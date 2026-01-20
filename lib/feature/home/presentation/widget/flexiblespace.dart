import 'package:credpal/core/components/custom_button.dart';
import 'package:credpal/core/constants/app_color.dart';
import 'package:credpal/core/constants/app_size.dart';
import 'package:credpal/gen/assets.gen.dart';
import 'package:flutter/material.dart';

class Flexiblespace extends StatelessWidget {
  const Flexiblespace({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Pay later',
                  style: TextStyle(color: AppColor.black, fontSize: 28, fontWeight: FontWeight.w900),
                ),
                Row(
                  children: [
                    Text(
                      'everywhere',
                      style: TextStyle(color: AppColor.black, fontSize: 28, fontWeight: FontWeight.w900),
                    ),
                    AppSizes.w(8),
                    Assets.icons.ic1.svg(),
                  ],
                ),
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Shopping limit: ₦0',
                  style: TextStyle(color: AppColor.blue100, fontSize: 12, fontWeight: FontWeight.w500),
                ),
                AppSizes.h(8),
                CustomButton(onPressed: () {}, text: 'Activate Credit', width: 163),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
