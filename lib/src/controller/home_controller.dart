import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../core/app_data.dart';
import '../model/category_model.dart';
import '../model/deals_model.dart';

class HomeController extends GetxController {
  //============================================================================
  final tapIndex = 0.obs;
  RxList<DealsModel> allProducts = AppData.dealsList.obs;
  RxList<DealsModel> filteredProducts = AppData.dealsList.obs;
  RxList<DealsModel> cartProducts = <DealsModel>[].obs;
  RxList<CategoryModel> categories = AppData.categoryList.obs;
  RxInt totalPrice = 0.obs;
  final TextEditingController tec = TextEditingController();

  //============================================================================
  void getLikedItems() {
    filteredProducts.assignAll(allProducts.where((item) => item.isLiked));
  }

  //============================================================================

  void isLiked(int index) {
    filteredProducts[index].isLiked = !filteredProducts[index].isLiked;
    filteredProducts.refresh();
  }

  //============================================================================

  void switchBetweenBottomNavigationItems(int index) {
    if (index == 0) {
      filteredProducts.assignAll(allProducts);
    }
    if (index == 2) {
      getLikedItems();
    }
    if (index == 3) {
      cartProducts.assignAll(allProducts.where((item) => item.quantity > 0));
    }

    tapIndex.value = index;
  }

  //============================================================================

  void addToCart(DealsModel product) {
    product.quantity++;
    cartProducts.add(product);
    calculateTotalPrice();
  }

  //============================================================================

  void calculateTotalPrice() {
    totalPrice.value = 0;
    for (var element in cartProducts) {
      totalPrice.value += element.quantity * element.newPrice;
    }
  }

  //============================================================================

  void increaseItem(int index) {
    DealsModel product = cartProducts[index];
    product.quantity++;
    calculateTotalPrice();
    update();
  }

  //============================================================================

  void decreaseItem(int index) {
    DealsModel product = cartProducts[index];
    if (product.quantity > 0) {
      product.quantity--;
    }
    calculateTotalPrice();
    update();
  }

//============================================================================
  bool get isEmptyCart {
    if (cartProducts.isEmpty || isZeroQuantity) {
      return true;
    } else {
      return false;
    }
  }

//============================================================================
  bool get isZeroQuantity {
    return cartProducts.any(
      (element) {
        return element.newPrice.compareTo(0) == 0 ? true : false;
      },
    );
  }
//============================================================================
//============================================================================
//============================================================================
//============================================================================
//============================================================================
//============================================================================
//============================================================================
//============================================================================
//============================================================================
//============================================================================
//============================================================================
//============================================================================
//============================================================================

}
