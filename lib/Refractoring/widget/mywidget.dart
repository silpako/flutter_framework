import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

// ignore: must_be_immutable
class ProductWidget extends StatelessWidget{

  final ImageProvider myImage;
  final String name;
  final String price;
  VoidCallback? onClick;
  Color? bgcolor;
  ProductWidget(
    {super.key,
    required this.myImage,
    required this.name,
    required this.price,
    this.onClick,
    this.bgcolor});
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onClick,
      child: Card
      (
        color: bgcolor,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Image(image: myImage, 
            height: 100, width: 100,),
            Text(name,style: GoogleFonts.habibi(fontSize: 15,fontWeight: FontWeight.bold,color: Colors.white),),
            Text(price,style: GoogleFonts.habibi(fontSize: 15,fontWeight: FontWeight.bold,color: Colors.white),),
            Row(
              children: [

                ElevatedButton.icon(
                  style: ElevatedButton.styleFrom(backgroundColor: Colors.red),
                  onPressed: (){}, 
                  icon: Icon(Icons.favorite_border,
                  color: Colors.white,),
                  label: Text
                  ("Wishlist",style: TextStyle(color: Colors.white),)),

                  ElevatedButton.icon(
                  style: ElevatedButton.styleFrom(backgroundColor: Colors.red),
                  onPressed: (){}, 
                  icon: Icon(Icons.shopping_cart,
                  color: Colors.white,),
                  label: Text
                  ("Add To Cart",style: TextStyle(color: Colors.white),)),



                 
              ],
            )
          ],
        ),
      ),
    );
  }

}