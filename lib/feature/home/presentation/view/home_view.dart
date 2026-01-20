import 'package:credpal/core/components/custom_appbar.dart';
import 'package:credpal/core/components/custom_scaffold.dart';
import 'package:credpal/core/constants/app_color.dart';
import 'package:credpal/core/constants/app_size.dart';
import 'package:credpal/feature/home/presentation/widget/flexiblespace.dart';
import 'package:credpal/feature/home/presentation/widget/merchantavatar.dart';
import 'package:credpal/feature/home/presentation/widget/productcard.dart';
import 'package:credpal/gen/assets.gen.dart';
import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      backgroundColor: AppColor.white,
      appBar: CustomAppBar(backgroundColor: AppColor.purple100, height: 140, flexibleSpace: Flexiblespace()),
      body: ListView(
        physics: AlwaysScrollableScrollPhysics(),
        children: [
          Container(
            color: AppColor.white,
            padding: EdgeInsets.fromLTRB(20, 18, 20, 24),
            child: Row(
              children: [
                Expanded(child: Placeholder(fallbackHeight: 40)),
                AppSizes.w(20),
                Container(
                  width: 45,
                  height: 45,
                  decoration: BoxDecoration(color: AppColor.purple400, borderRadius: BorderRadius.circular(8)),
                  child: Center(
                    child: Assets.icons.scan.svg(colorFilter: ColorFilter.mode(AppColor.black, BlendMode.srcIn)),
                  ),
                ),
              ],
            ),
          ),
          Container(
            color: AppColor.purple200,
            padding: EdgeInsets.fromLTRB(20, 14, 0, 20),
            child: Column(
              children: [
                SizedBox(
                  height: 174,
                  child: ListView.separated(
                    padding: EdgeInsets.only(right: 20),
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return ProductCard();
                    },
                    separatorBuilder: (context, index) => AppSizes.w(24),
                    itemCount: 3,
                  ),
                ),
                AppSizes.h(24),
                SizedBox(
                  height: 174,
                  child: ListView.separated(
                    padding: EdgeInsets.only(right: 20),
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return ProductCard();
                    },
                    separatorBuilder: (context, index) => AppSizes.w(24),
                    itemCount: 3,
                  ),
                ),
              ],
            ),
          ),
          Container(
            color: AppColor.white,
            padding: EdgeInsets.fromLTRB(20, 33, 20, 24),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Featured Merchants',
                      style: TextStyle(color: AppColor.black, fontSize: 16, fontWeight: FontWeight.w900),
                    ),
                    GestureDetector(
                      onTap: () => debugPrint('View all tapped'),
                      child: Text(
                        'View all',
                        style: TextStyle(color: AppColor.primary, fontSize: 12, fontWeight: FontWeight.w600),
                      ),
                    ),
                  ],
                ),
                AppSizes.h(37),

                GridView(
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 4,
                    mainAxisSpacing: 16,
                    crossAxisSpacing: 16,
                    childAspectRatio: 1,
                  ),
                  children: List.generate(6, (index) => MerchantAvatar()),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
