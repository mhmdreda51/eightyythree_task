import 'package:animations/animations.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../core/size_config.dart';
import '../../controller/home_controller.dart';
import '../pages/card_screen.dart';
import '../pages/home_screen.dart';
import 'animated_switcher_wrapper.dart';

class NavScreen extends StatelessWidget {
  final HomeController controller = Get.put(HomeController());

  NavScreen({Key? key}) : super(key: key);
  static List<Widget> screens = [
    HomeScreen(),
    const Scaffold(),
    const Scaffold(),
    CardScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      body: Obx(() {
        return PageTransitionSwitcher(
          duration: const Duration(seconds: 1),
          transitionBuilder: (
            Widget child,
            Animation<double> animation,
            Animation<double> secondaryAnimation,
          ) {
            return FadeThroughTransition(
              animation: animation,
              secondaryAnimation: secondaryAnimation,
              child: child,
            );
          },
          child: screens[controller.tapIndex.value],
        );
      }),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      resizeToAvoidBottomInset: false,
      floatingActionButton: SizedBox(
        width: getScreenWidth(70.0),
        height: getScreenHeight(70.0),
        child: FloatingActionButton(
          backgroundColor: const Color(0xffd93e11),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              GetBuilder<HomeController>(
                builder: (HomeController controller) {
                  return AnimatedSwitcherWrapper(
                    child: Text(
                      '\$${controller.totalPrice.value}',
                      key: ValueKey<int>(controller.totalPrice.value),
                      style: TextStyle(
                        fontSize: getScreenWidth(18.0),
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  );
                },
              ),
              Icon(Icons.shopping_cart_outlined, size: getScreenWidth(25.0)),
            ],
          ),
          onPressed: () {},
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        notchMargin: 2.0,
        shape: const CircularNotchedRectangle(),
        child: SizedBox(
          height: getScreenHeight(65),
          child: Padding(
            padding: EdgeInsets.only(
              left: getScreenWidth(10),
              right: getScreenWidth(10),
            ),
            child: Obx(() {
              return Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  IconButton(
                    icon: Icon(
                      Icons.store,
                      color: controller.tapIndex.value == 0
                          ? Colors.red
                          : Colors.grey,
                    ),
                    onPressed: () {
                      controller.switchBetweenBottomNavigationItems(0);
                    },
                  ),
                  IconButton(
                    icon: Icon(
                      Icons.notifications_none,
                      color: controller.tapIndex.value == 1
                          ? Colors.red
                          : Colors.grey,
                    ),
                    onPressed: () {
                      controller.switchBetweenBottomNavigationItems(1);
                    },
                  ),
                  SizedBox(width: getScreenWidth(40.0)),
                  IconButton(
                    icon: Icon(
                      Icons.favorite_border,
                      color: controller.tapIndex.value == 2
                          ? Colors.red
                          : Colors.grey,
                    ),
                    onPressed: () {
                      controller.switchBetweenBottomNavigationItems(2);
                    },
                  ),
                  IconButton(
                    icon: Icon(
                      Icons.wallet,
                      color: controller.tapIndex.value == 3
                          ? Colors.red
                          : Colors.grey,
                    ),
                    onPressed: () {
                      controller.switchBetweenBottomNavigationItems(3);
                    },
                  ),
                ],
              );
            }),
          ),
        ),
      ),
    );
  }
}
