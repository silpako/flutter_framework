import 'package:flutter/cupertino.dart';
import 'package:flutter_october_vs/GetX/view/cart_screen.dart';
import 'package:get/get.dart';
import '../model/cartModel.dart';

class CartController extends GetxController{
  RxList<CartModel> allProducts = productList.obs;
  bool isItemListScreen = true;
  bool isCartScreen = false;
  Rx<int> itemCount = 0.obs;
  Rx<double> price = 0.0.obs;

  void increment(int index) {
    allProducts[index].count++;
    allProducts.refresh();
    countAllItems();
    calcPrice();
  }

  void decrement(int index) {
    allProducts[index].count--;
    allProducts.refresh();
    countAllItems();
    calcPrice();
  }

  countAllItems(){
    itemCount.value = 0;
    for(var singleItem in allProducts){
      itemCount.value += singleItem.count;
    }
  }

  calcPrice(){
    price.value = 0.0;
    for(var singleItem in allProducts){
      if(singleItem.count>0){
        price.value+=(double.parse(singleItem.price.replaceAll("\$", "").trim())*singleItem.count);
      }
    }
  }

  Future<bool> navigateToListItemScreen() async{
    isItemListScreen = true;
    isCartScreen = false;
    return true;
  }

  Widget navigateToCartScreen(BuildContext context){
    isItemListScreen = false;
    isCartScreen = true;
    calcPrice();
    return CartScreen();
  }
  
}