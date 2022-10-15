import 'package:flutter/material.dart';

import '../../../core/app_data.dart';
import '../../../core/size_config.dart';
import '../widgets/category_item.dart';

class CategoryListView extends StatelessWidget {
  const CategoryListView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: getScreenHeight(30.0)),
      child: SizedBox(
        height: getScreenHeight(105.0),
        width: SizeConfig.screenWidth,
        child: ListView.separated(
          scrollDirection: Axis.horizontal,
          itemCount: AppData.categoryList.length,
          itemBuilder: (context, index) {
            final item = AppData.categoryList[index];
            return CategoryItem(item: item);
          },
          separatorBuilder: (context, index) {
            return SizedBox(width: getScreenWidth(10.0));
          },
        ),
      ),
    );
  }
}
