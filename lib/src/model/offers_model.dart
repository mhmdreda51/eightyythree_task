import 'package:flutter/material.dart';

class OffersModel {
  final String title;
  final Color color;
  final String storeName;
  final String endAtt;
  final String oldPrice;
  final String newPrice;

  OffersModel({
    required this.title,
    required this.color,
    required this.storeName,
    required this.endAtt,
    required this.oldPrice,
    required this.newPrice,
  });
}
