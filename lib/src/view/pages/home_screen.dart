import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../core/size_config.dart';
import '../../controller/home_controller.dart';
import '../Componants/category_header_row.dart';
import '../Componants/category_list_view.dart';
import '../Componants/deals_list_view.dart';
import '../Componants/locations_list_view.dart';
import '../Componants/main_top_bar.dart';
import '../Componants/offers_list_view.dart';
import '../widgets/main_text_form_field.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({Key? key}) : super(key: key);
  final HomeController controller = Get.put(HomeController());

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const MainTopBar(
                  title: "Mustafa St.",
                ),
                SizedBox(height: getScreenHeight(30.0)),
                MainTextFormField(
                  controller: controller.tec,
                  label: "",
                  validator: () {},
                  hintText: "Search in thousands of products",
                ),
                const LocationsListView(),
                const CategoryHeaderRow(),
                const CategoryListView(),
                Text(
                  "Deals of the day",
                  style: TextStyle(
                    fontSize: getScreenWidth(18.0),
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                DealsListView(controller: controller),
                const OffersListView(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
