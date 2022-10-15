import 'package:ecommerce_task/src/model/category_model.dart';
import 'package:flutter/material.dart';

import '../../../core/size_config.dart';

class CategoryItem extends StatelessWidget {
  const CategoryItem({super.key, required this.item});

  final CategoryModel item;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: getScreenWidth(70.0),
      height: getScreenHeight(105.0),
      child: Column(
        children: [
          Container(
            height: getScreenHeight(70),
            width: getScreenWidth(70),
            decoration: BoxDecoration(
              color: item.color,
              borderRadius: BorderRadius.circular(15),
            ),
          ),
          SizedBox(height: getScreenHeight(10.0)),
          Text(
            item.title,
            style: TextStyle(
              fontSize: getScreenWidth(14),
              color: Colors.black,
            ),
          ),
        ],
      ),
    );
  }
}
