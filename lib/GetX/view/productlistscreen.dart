import 'package:badges/badges.dart';
import 'package:flutter/material.dart' hide Badge;
import 'package:flutter_october_vs/GetX/controller/cart_countroller.dart';
import 'package:flutter_october_vs/GetX/view/productlistview.dart';
import 'package:get/get.dart';

final CartController cartController = Get.put(CartController());

class ProductListScreen extends StatelessWidget {
  const ProductListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
        Navigator.push(context, MaterialPageRoute(builder: cartController.navigateToCartScreen));
        },
        child:Badge(
          badgeContent: Obx(() => Text(cartController.itemCount.value.toString())),
              child: Icon(Icons.shopping_cart),
        )
      ),
      appBar: AppBar(
        title: Text("Item list"),
      ),
      body: ProductListView(),
    );
  }
}