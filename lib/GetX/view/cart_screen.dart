import 'package:flutter/material.dart';
import 'package:flutter_october_vs/GetX/controller/cart_countroller.dart';
import 'package:get/get.dart';
import '../model/cartModel.dart';

final CartController cartController = Get.put(CartController());

class CartScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    Widget cartList(CartModel item, int index){
      return GestureDetector(
        child: Row(
          children: [
            Image.asset(item.image, fit: BoxFit.contain, width: 60,),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(item.name, style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black,fontSize: 16),),
                Text(item.color, style: TextStyle(color: Colors.grey,fontSize: 14),),
                Text(item.price, style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black,fontSize: 16),),
              ],
            ),
            Spacer(),
            Row(
              children: [
                IconButton(onPressed: (){
                  cartController.increment(index);
                }, icon:Icon(Icons.add)),
                Obx(() => Text(cartController.allProducts[index].count.toString(), style: TextStyle(color: Colors.black,fontSize: 16),)),
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
          if (cartController.isCartScreen && item.count > 0) {
            return cartList(item, index);
          } else {
            return Container();
          }
        });

  }

}