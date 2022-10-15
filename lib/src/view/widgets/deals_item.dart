import 'package:ecommerce_task/src/controller/home_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../core/size_config.dart';

class DealsProductItem extends StatelessWidget {
  const DealsProductItem(
      {super.key, required this.index, required this.controller});

  final int index;
  final HomeController controller;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: getScreenHeight(130.0),
      width: getScreenWidth(300.0),
      child: Row(
        children: [
          Stack(
            children: [
              Container(
                height: getScreenHeight(100.0),
                width: getScreenWidth(100.0),
                decoration: BoxDecoration(
                  color: controller.filteredProducts[index].color,
                  borderRadius: BorderRadius.circular(15),
                ),
              ),
              Container(
                height: getScreenHeight(35.0),
                width: getScreenWidth(35.0),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Center(
                  child: Obx(() {
                    return IconButton(
                      splashColor: Colors.transparent,
                      highlightColor: Colors.transparent,
                      icon: Icon(
                        controller.filteredProducts[index].isLiked
                            ? Icons.favorite
                            : Icons.favorite_border,
                        color: controller.filteredProducts[index].isLiked
                            ? Colors.redAccent
                            : const Color(0xFFA6A3A0),
                        size: getScreenWidth(15.0),
                      ),
                      onPressed: () => controller.isLiked(index),
                    );
                  }),
                ),
              ),
            ],
          ),
          Padding(
            padding: EdgeInsets.only(
              top: getScreenHeight(15.0),
              left: getScreenWidth(15.0),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  controller.filteredProducts[index].title,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: getScreenWidth(15.0),
                  ),
                ),
                SizedBox(height: getScreenHeight(10.0)),
                Text(
                  controller.filteredProducts[index].subTitle,
                  style: TextStyle(
                    fontSize: getScreenWidth(13.0),
                  ),
                ),
                SizedBox(height: getScreenHeight(10.0)),
                Row(
                  children: [
                    Icon(
                      Icons.location_on_outlined,
                      size: getScreenWidth(16.0),
                    ),
                    SizedBox(width: getScreenWidth(5.0)),
                    Text(
                      controller.filteredProducts[index].distance,
                      style: TextStyle(
                        fontSize: getScreenWidth(13.0),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: getScreenHeight(10.0)),
                Row(
                  children: [
                    Text(
                      "\$ ${controller.filteredProducts[index].newPrice}",
                      style: TextStyle(
                        fontSize: getScreenWidth(15.0),
                        color: Colors.red,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(width: getScreenWidth(15.0)),
                    Text(
                      "\$ ${controller.filteredProducts[index].oldPrice}",
                      style: TextStyle(
                        fontSize: getScreenWidth(15.0),
                        decoration: TextDecoration.lineThrough,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
