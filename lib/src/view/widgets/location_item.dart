import 'package:ecommerce_task/src/model/location_model.dart';
import 'package:flutter/material.dart';

import '../../../core/size_config.dart';

class LocationItem extends StatelessWidget {
  const LocationItem({Key? key, required this.item}) : super(key: key);
  final LocationModel item;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(
          color: Colors.grey[200]!,
        ),
        color: Colors.white,
        borderRadius: BorderRadius.circular(15),
      ),
      padding: EdgeInsets.only(left: getScreenWidth(8.0)),
      height: getScreenHeight(66.0),
      width: getScreenWidth(200.0),
      child: Row(
        children: [
          Container(
            height: getScreenHeight(50.0),
            width: getScreenWidth(50.0),
            decoration: BoxDecoration(
              color: const Color(0xFFe3ddd6),
              borderRadius: BorderRadius.circular(15),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              top: getScreenHeight(8.0),
              left: getScreenWidth(12.0),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  item.locationType,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: getScreenWidth(15.0),
                  ),
                ),
                Text(
                  item.location,
                  style: TextStyle(
                    fontSize: getScreenWidth(13.0),
                  ),
                ),
                Text(
                  item.streetName,
                  style: TextStyle(
                    fontSize: getScreenWidth(13.0),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
