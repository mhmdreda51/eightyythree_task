import 'package:flutter/material.dart';

class DealsModel {
  final String title;
  final Color color;
  final String subTitle;
  final String distance;
  final int oldPrice;
  final int newPrice;
  int quantity;
  final String type;
  bool isLiked;

  DealsModel({
    required this.title,
    required this.type,
    required this.color,
    required this.subTitle,
    required this.distance,
    required this.oldPrice,
    required this.newPrice,
    required this.isLiked,
    required this.quantity,
  });
}
