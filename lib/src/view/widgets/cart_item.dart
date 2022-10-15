import 'package:ecommerce_task/src/controller/home_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../core/size_config.dart';
import 'animated_switcher_wrapper.dart';

class CartItem extends StatelessWidget {
  const CartItem({Key? key, required this.controller, required this.index})
      : super(key: key);
  final HomeController controller;
  final int index;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: getScreenHeight(90.0),
      width: SizeConfig.screenWidth,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            height: getScreenHeight(90.0),
            width: getScreenWidth(90.0),
            decoration: BoxDecoration(
              color: controller.cartProducts[index].color,
              borderRadius: BorderRadius.circular(15),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              top: getScreenHeight(10.0),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  controller.filteredProducts[index].title,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: getScreenWidth(14.0),
                  ),
                ),
                SizedBox(height: getScreenHeight(10.0)),
                Text(
                  controller.filteredProducts[index].type,
                  style: TextStyle(
                    fontSize: getScreenWidth(9.0),
                  ),
                ),
                SizedBox(height: getScreenHeight(10.0)),
                Text(
                  "\$ ${controller.filteredProducts[index].newPrice}",
                  style: TextStyle(
                    fontSize: getScreenWidth(15.0),
                    color: Colors.red,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                width: getScreenWidth(45.0),
                height: getScreenHeight(45.0),
                decoration: BoxDecoration(
                  color: const Color(0xFFb0eafd),
                  borderRadius: BorderRadius.circular(5),
                ),
                child: IconButton(
                  onPressed: () => controller.decreaseItem(index),
                  icon: const Icon(
                    Icons.remove,
                    color: Color(0xFF47b6da),
                  ),
                ),
              ),
              SizedBox(width: getScreenWidth(10.0)),
              GetBuilder<HomeController>(
                builder: (HomeController controller) {
                  return AnimatedSwitcherWrapper(
                    child: Text(
                      '${controller.cartProducts[index].quantity}',
                      key: ValueKey<int>(
                          controller.cartProducts[index].quantity),
                      style: TextStyle(
                        fontSize: getScreenWidth(18.0),
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  );
                },
              ),
              SizedBox(width: getScreenHeight(10.0)),
              Container(
                width: getScreenWidth(45.0),
                height: getScreenHeight(45.0),
                decoration: BoxDecoration(
                  color: const Color(0xFFb0eafd),
                  borderRadius: BorderRadius.circular(5),
                ),
                child: IconButton(
                  onPressed: () => controller.increaseItem(index),
                  icon: const Icon(
                    Icons.add,
                    color: Color(0xFF47b6da),
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
