import 'package:flutter/widgets.dart';

class MerchantModel {
  final String name;
  final String logoUrl;
  final Color colorCode;
  final bool isOnline;

  MerchantModel({required this.name, required this.logoUrl, required this.colorCode, this.isOnline = false});
}
