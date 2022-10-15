import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../src/model/category_model.dart';
import '../src/model/deals_model.dart';
import '../src/model/location_model.dart';
import '../src/model/offers_model.dart';

class AppData {
  const AppData._();

  static List<CategoryModel> categoryList = [
    CategoryModel(
      title: "Stack",
      color: const Color(0xFFf9bdad),
    ),
    CategoryModel(
      title: "Vegetables",
      color: const Color(0xFFfad96d),
    ),
    CategoryModel(
      title: "Beverages",
      color: const Color(0xFFccb8ff),
    ),
    CategoryModel(
      title: "Fish",
      color: const Color(0xFFb0eafd),
    ),
    CategoryModel(
      title: "Juice",
      color: const Color(0xFFff9dc2),
    ),
  ];

  //============================================================================

  static List<LocationModel> locationsList = [
    LocationModel(
      location: "Mustafa st. No:2",
      locationType: "Home Address",
      streetName: "Street x12",
    ),
    LocationModel(
      location: "Axis istanbulB2 Blok",
      locationType: "Office Address",
      streetName: "floor 2 Office",
    ),
  ];

  //============================================================================

  static List<DealsModel> dealsList = [
    DealsModel(
      color: const Color(0xFFfbedd8),
      title: "Salmon",
      subTitle: "Pieces 5",
      distance: "15 Minutes Away",
      isLiked: false,
      newPrice: 12,
      oldPrice: 18,
      quantity: 1,
      type: "2 Serving",
    ),
    DealsModel(
      color: const Color(0xFFcdf5e7),
      type: "173 Grams",
      title: "Turkish Steak",
      subTitle: "Pieces 5",
      distance: "15 Minutes Away",
      isLiked: true,
      newPrice: 22,
      oldPrice: 30,
      quantity: 1,
    ),
  ];

  //============================================================================

  static List<OffersModel> offersList = [
    OffersModel(
      oldPrice: "\$ 17",
      newPrice: "\$ 32",
      title: "WHOPPER",
      color: const Color(0xFFfec8bd),
      endAtt: "Available until 24 December 2020",
      storeName: "Mega",
    ),
    OffersModel(
      oldPrice: "\$ 32",
      newPrice: "\$ 17",
      title: "WHOPPER",
      color: const Color(0xFFcdf5e7),
      endAtt: "Available until 24 December 2020",
      storeName: "Mega",
    ),
  ];

  //============================================================================

  static List<BottomNavigationBarItem> bottomNavyBarItems = [
    const BottomNavigationBarItem(
      label: "Grocery",
      icon: Icon(Icons.store),
    ),
    const BottomNavigationBarItem(
      label: "News",
      icon: Icon(Icons.notifications_none),
    ),
    const BottomNavigationBarItem(
      label: "Favorites",
      icon: Icon(Icons.favorite_border),
    ),
    const BottomNavigationBarItem(
      label: "Cart",
      icon: FaIcon(Icons.wallet),
    ),
  ];
//============================================================================
//============================================================================
//============================================================================
//============================================================================
//============================================================================
//============================================================================

}
