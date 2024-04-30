import 'package:flutter/material.dart';
import 'package:flutter_october_vs/Passing%20Data%20Between%20Screen/using%20navigator/dummy_data.dart';

class DetailsPage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {

    final productId=ModalRoute.of(context)?.settings.arguments;
    final product = products.firstWhere((element) => element["id"]==productId,);
   return Scaffold(
    appBar: AppBar(title: Text("Product Details",style: TextStyle(fontSize: 25,color: Colors.yellow),),),
    body: Column(
      children: [
        Container(
          decoration: BoxDecoration(
            image: DecorationImage(image: AssetImage(product["image"])),
          ),
        ),
        Text(
          product["name"],
          style: const TextStyle(fontSize: 15,fontWeight: FontWeight.bold,color: Colors.brown),
        ),
        Text(
          product["description"],
          style: const TextStyle(fontSize: 15,fontWeight: FontWeight.bold,color: Colors.brown),
        ),
        Text(
          product[" "],
          style: const TextStyle(fontSize: 15,fontWeight: FontWeight.bold,color: Colors.brown),
        )
      ],
    ),

   );
  }

}