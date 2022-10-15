import 'package:ecommerce_task/src/controller/home_controller.dart';
import 'package:flutter/material.dart';

import '../../../core/app_data.dart';
import '../../../core/size_config.dart';
import '../widgets/deals_item.dart';

class DealsListView extends StatelessWidget {
  const DealsListView({Key? key, required this.controller}) : super(key: key);
  final HomeController controller;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        top: getScreenHeight(15.0),
        bottom: getScreenHeight(30.0),
      ),
      child: SizedBox(
        height: getScreenHeight(130),
        width: SizeConfig.screenWidth,
        child: ListView.separated(
          scrollDirection: Axis.horizontal,
          itemCount: AppData.dealsList.length,
          itemBuilder: (context, index) {
            return DealsProductItem(
              index: index,
              controller: controller,
            );
          },
          separatorBuilder: (context, index) {
            return SizedBox(width: getScreenWidth(10.0));
          },
        ),
      ),
    );
  }
}
