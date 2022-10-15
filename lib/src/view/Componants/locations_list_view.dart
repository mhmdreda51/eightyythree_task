import 'package:flutter/material.dart';

import '../../../core/app_data.dart';
import '../../../core/size_config.dart';
import '../widgets/location_item.dart';

class LocationsListView extends StatelessWidget {
  const LocationsListView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        top: getScreenHeight(30.0),
        bottom: getScreenHeight(30.0),
      ),
      child: SizedBox(
        height: getScreenHeight(70.0),
        width: double.infinity,
        child: ListView.separated(
          scrollDirection: Axis.horizontal,
          itemCount: AppData.locationsList.length,
          itemBuilder: (context, index) {
            final item = AppData.locationsList[index];
            return LocationItem(
              item: item,
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
