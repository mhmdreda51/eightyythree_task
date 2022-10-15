import 'package:flutter/material.dart';

import '../../../core/app_data.dart';
import '../../../core/size_config.dart';
import '../widgets/offer_item.dart';

class OffersListView extends StatelessWidget {
  const OffersListView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: getScreenHeight(50.0)),
      child: SizedBox(
        height: getScreenHeight(160.0),
        width: SizeConfig.screenWidth,
        child: ListView.separated(
          scrollDirection: Axis.horizontal,
          itemCount: AppData.offersList.length,
          itemBuilder: (context, index) {
            final item = AppData.offersList[index];
            return OfferItem(item: item);
          },
          separatorBuilder: (context, index) {
            return SizedBox(width: getScreenWidth(10.0));
          },
        ),
      ),
    );
  }
}
