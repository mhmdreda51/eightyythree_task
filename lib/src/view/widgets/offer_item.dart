import 'package:flutter/material.dart';

import '../../../core/size_config.dart';
import '../../model/offers_model.dart';

class OfferItem extends StatelessWidget {
  const OfferItem({Key? key, required this.item}) : super(key: key);
  final OffersModel item;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: getScreenHeight(160),
      width: getScreenWidth(320),
      decoration: BoxDecoration(
        color: const Color(0xFFfec8bd),
        borderRadius: BorderRadius.circular(15),
      ),
      padding: EdgeInsets.only(
        top: getScreenHeight(15.0),
        left: getScreenWidth(100.0),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            item.storeName,
            style: TextStyle(
              fontSize: getScreenWidth(12.0),
              color: Colors.red,
              fontWeight: FontWeight.bold,
            ),
          ),
          RichText(
            text: TextSpan(
              text: 'WHOPP',
              style: TextStyle(
                color: const Color(0xFF21114b),
                fontSize: getScreenWidth(31.0),
                fontWeight: FontWeight.bold,
              ),
              children: <TextSpan>[
                TextSpan(
                  text: 'E',
                  style: TextStyle(
                    color: Colors.red,
                    fontSize: getScreenWidth(31.0),
                    fontWeight: FontWeight.bold,
                  ),
                ),
                TextSpan(
                  text: 'R',
                  style: TextStyle(
                    color: const Color(0xFF21114b),
                    fontSize: getScreenWidth(31.0),
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: getScreenHeight(15.0)),
          Row(
            children: [
              Text(
                item.oldPrice,
                style: TextStyle(
                  fontSize: getScreenWidth(18.0),
                  color: Colors.red,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(width: getScreenWidth(40.0)),
              Text(
                item.newPrice,
                style: TextStyle(
                  fontSize: getScreenWidth(18.0),
                  color: Colors.white,
                  decoration: TextDecoration.lineThrough,
                ),
              ),
            ],
          ),
          SizedBox(height: getScreenHeight(15.0)),
          Row(
            children: [
              SizedBox(
                height: 7,
                width: 7,
                child: TextButton(
                  style: TextButton.styleFrom(
                    backgroundColor: Colors.white,
                    shape: const CircleBorder(),
                  ),
                  child: const Text(''),
                  onPressed: () {},
                ),
              ),
              const SizedBox(width: 5.0),
              Text(
                item.endAtt,
                style: TextStyle(
                  fontSize: getScreenWidth(12.0),
                  color: Colors.white,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
