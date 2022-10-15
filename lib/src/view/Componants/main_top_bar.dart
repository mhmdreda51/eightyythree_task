import 'package:flutter/material.dart';

import '../../../core/size_config.dart';

class MainTopBar extends StatelessWidget {
  const MainTopBar({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Stack(
          children: [
            Image.asset("assets/appbar_clip.png"),
            Padding(
              padding: EdgeInsets.only(
                left: getScreenWidth(5.0),
                top: getScreenHeight(8.0),
              ),
              child: Row(
                children: [
                  Icon(
                    Icons.location_on_outlined,
                    color: Colors.white,
                    size: getScreenWidth(18.0),
                  ),
                  Text(
                    title,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: getScreenWidth(14.0),
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
        CircleAvatar(
          backgroundColor: Colors.white,
          child: Container(
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(color: Colors.grey),
            ),
          ),
        ),
      ],
    );
  }
}
