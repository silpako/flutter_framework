import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:lottie/lottie.dart';
void main()
{
  runApp(MaterialApp(home: LottieEx2(),));
}
class LottieEx2 extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Lottie"),),
      body: Center(
        child: Lottie.asset("assets/animation/Animation.json"),
      ),
    );
  }

}