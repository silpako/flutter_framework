import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(home: CarouselEx(),));
}
class CarouselEx extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Carousel Slider"),),
    //   //body: CarouselSlider(
    //     items: List.generate(6, (index) => Container
    //     ( decoration: BoxDecoration(
    //       image: DecorationImage(image: AssetImage(Image[index])))
    //     ),
    //     ),
    //   ),
    );
  }

}