import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../core/size_config.dart';
import '../../controller/home_controller.dart';
import '../Componants/main_top_bar.dart';
import '../widgets/cart_item.dart';
import '../widgets/empty_cart.dart';

class CardScreen extends StatelessWidget {
  CardScreen({Key? key}) : super(key: key);
  final HomeController controller = Get.put(HomeController());

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(15.0),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const MainTopBar(title: "Oxford Street"),
                Padding(
                  padding: EdgeInsets.only(
                    top: getScreenHeight(50.0),
                    left: getScreenWidth(8.0),
                    bottom: getScreenHeight(30.0),
                  ),
                  child: Text(
                    "Cart",
                    style: TextStyle(
                      fontSize: getScreenWidth(20.0),
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                !controller.isEmptyCart
                    ? SizedBox(
                        height: getScreenHeight(600.0),
                        child: ListView.separated(
                          scrollDirection: Axis.vertical,
                          itemCount: controller.cartProducts.length,
                          itemBuilder: (context, index) {
                            return CartItem(
                              controller: controller,
                              index: index,
                            );
                          },
                          separatorBuilder: (context, index) {
                            return SizedBox(height: getScreenHeight(50.0));
                          },
                        ),
                      )
                    : const EmptyCart(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
