import 'package:credpal/core/components/custom_appbar.dart';
import 'package:credpal/core/components/custom_inputfield.dart';
import 'package:credpal/core/components/custom_scaffold.dart';
import 'package:credpal/core/constants/app_color.dart';
import 'package:credpal/core/constants/app_size.dart';
import 'package:credpal/feature/home/data/model/merchant_model.dart';
import 'package:credpal/feature/home/data/model/product_model.dart';
import 'package:credpal/feature/home/presentation/widget/flexiblespace.dart';
import 'package:credpal/feature/home/presentation/widget/merchantavatar.dart';
import 'package:credpal/feature/home/presentation/widget/productcard.dart';
import 'package:credpal/gen/assets.gen.dart';
import 'package:flutter/material.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  final TextEditingController searchController = TextEditingController();
  final FocusNode searchFocusNode = FocusNode();

  @override
  void dispose() {
    super.dispose();
    searchController.dispose();
    searchFocusNode.dispose();
  }

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
                Expanded(
                  child: CustomInputField(
                    controller: searchController,
                    currentFocus: searchFocusNode,
                    hintText: 'Search for products or stores',
                    prefixIconPath: Assets.icons.searchNormal.path,
                  ),
                ),
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
                    physics: AlwaysScrollableScrollPhysics(),
                    padding: EdgeInsets.only(right: 20),
                    scrollDirection: Axis.horizontal,
                    separatorBuilder: (context, index) => AppSizes.w(24),
                    itemCount: firstCategory.length,
                    itemBuilder: (context, index) {
                      final product = firstCategory[index];
                      return ProductCard(
                        title: product.title,
                        price: product.price,
                        oldPrice: product.oldPrice,
                        imagePath: product.imagePath,
                        logoPath: product.logoPath,
                      );
                    },
                  ),
                ),
                AppSizes.h(24),
                SizedBox(
                  height: 174,
                  child: ListView.separated(
                    physics: AlwaysScrollableScrollPhysics(),
                    padding: EdgeInsets.only(right: 20),
                    scrollDirection: Axis.horizontal,
                    separatorBuilder: (context, index) => AppSizes.w(24),
                    itemCount: secondCategory.length,
                    itemBuilder: (context, index) {
                      final product = secondCategory[index];
                      return ProductCard(
                        title: product.title,
                        price: product.price,
                        oldPrice: product.oldPrice,
                        imagePath: product.imagePath,
                        logoPath: product.logoPath,
                      );
                    },
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
                  children: List.generate(merchants.length, (index) {
                    final merchant = merchants[index];
                    return MerchantAvatar(
                      name: merchant.name,
                      logoUrl: merchant.logoUrl,
                      colorCode: merchant.colorCode,
                      isOnline: merchant.isOnline,
                    );
                  }),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

final List<ProductModel> firstCategory = [
  ProductModel(
    title: 'Nokia G20',
    price: '39,780',
    oldPrice: '88,000',
    imagePath: Assets.images.img1.path,
    logoPath: Assets.images.subimg1.path,
  ),

  ProductModel(
    title: 'iPhone XS Max 4GB..',
    price: '295,999',
    oldPrice: '315,000',
    imagePath: Assets.images.img2.path,
    logoPath: Assets.images.subimg2.path,
  ),

  ProductModel(
    title: 'Masterchef Pressure Cooker',
    price: '39,780',
    oldPrice: '88,000',
    imagePath: Assets.images.img3.path,
    logoPath: Assets.images.subimg3.path,
  ),
];

final List<ProductModel> secondCategory = [
  ProductModel(
    title: 'Anker Soundcore Life P2',
    price: '39,780',
    oldPrice: '88,000',
    imagePath: Assets.images.img4.path,
    logoPath: Assets.images.subimg4.path,
  ),

  ProductModel(
    title: 'iPhone 12 Pro',
    price: '490,500',
    oldPrice: '515,000',
    imagePath: Assets.images.img5.path,
    logoPath: Assets.images.subimg5.path,
  ),

  ProductModel(
    title: 'PS4 Controller',
    price: '39,780',
    oldPrice: '88,000',
    imagePath: Assets.images.img6.path,
    logoPath: Assets.images.subimg6.path,
  ),
];

final List<MerchantModel> merchants = [
  MerchantModel(name: 'Justrite', logoUrl: Assets.images.logo1.path, colorCode: AppColor.purple500, isOnline: true),
  MerchantModel(name: 'Orile Restaurant', logoUrl: Assets.images.logo2.path, colorCode: AppColor.black, isOnline: true),
  MerchantModel(name: 'Slot', logoUrl: Assets.images.logo3.path, colorCode: AppColor.red100, isOnline: true),
  MerchantModel(name: 'Pointek', logoUrl: Assets.images.logo4.path, colorCode: AppColor.blue200, isOnline: true),
  MerchantModel(name: 'ogabassey', logoUrl: Assets.images.logo5.path, colorCode: AppColor.grey100, isOnline: true),
  MerchantModel(name: 'Casper Stores', logoUrl: Assets.images.logo6.path, colorCode: AppColor.red200, isOnline: false),
  MerchantModel(name: 'Dreamworks', logoUrl: Assets.images.logo7.path, colorCode: AppColor.purple700, isOnline: false),
  MerchantModel(name: 'Hubmart', logoUrl: Assets.images.logo8.path, colorCode: AppColor.black, isOnline: true),
  MerchantModel(name: 'Just Used', logoUrl: Assets.images.logo9.path, colorCode: AppColor.blue300, isOnline: true),
  MerchantModel(name: 'Just fones', logoUrl: Assets.images.logo10.path, colorCode: AppColor.black, isOnline: true),
];
