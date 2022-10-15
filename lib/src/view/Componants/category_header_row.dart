import 'package:flutter/material.dart';

import '../../../core/app_data.dart';
import '../../../core/size_config.dart';

class CategoryHeaderRow extends StatelessWidget {
  const CategoryHeaderRow({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: getScreenHeight(30.0)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            "Explore By Category",
            style: TextStyle(
              fontSize: getScreenWidth(18.0),
              color: Colors.black,
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
            "See All (${AppData.categoryList.length})",
            style: TextStyle(
              fontSize: getScreenWidth(16.0),
              color: Colors.grey,
            ),
          )
        ],
      ),
    );
  }
}
