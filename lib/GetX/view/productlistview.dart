import 'package:flutter/material.dart';
import 'package:flutter_october_vs/GetX/controller/cart_countroller.dart';
import 'package:get/get.dart';
import '../model/cartModel.dart';

final CartController cartController = Get.put(CartController());

class ProductListView extends StatelessWidget {
  Widget countButton(int index, void Function(int index) counter, {IconData icon = Icons.add}) {
    return RawMaterialButton(
      onPressed: () {
        counter(index);
      },
      elevation: 2.0,
      fillColor: Colors.white,
      child: Icon(
        icon,
        size: 15,
      ),
      shape: const CircleBorder(),
    );
  }

  @override
  Widget build(BuildContext context) {
    Widget productListBody(CartModel item, int index){
      return GestureDetector(
        child: Row(
          children: [
            Image.asset(item.image, fit: BoxFit.contain, width: 60,),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(item.name, style: TextStyle(fontWeight: FontWeight.bold),),
                Text(item.color, style: TextStyle(color: Colors.grey),),
                Text(item.price, style: TextStyle(fontWeight: FontWeight.bold),),
              ],
            ),
            Spacer(),
            Row(
              children: [
                IconButton(onPressed: (){
                  cartController.increment(index);
                }, icon:Icon(Icons.add)),
                Obx(() => Text(cartController.allProducts[index].count.toString())),
                IconButton(onPressed: (){
                  cartController.decrement(index);
                }, icon:Icon(Icons.remove))
              ],
            )
          ],
        ),
      );
    }

    return ListView.builder(
        padding: const EdgeInsets.all(15),
        itemCount: cartController.allProducts.length,
        itemBuilder: (context,index){
        CartModel item = cartController.allProducts[index];
        if (cartController.isItemListScreen) {
          return productListBody(item, index);
        } else if (cartController.isCartScreen && item.count > 0) {
          return productListBody(item, index);
        } else {
          return Container();
        }
    });

    }

  }