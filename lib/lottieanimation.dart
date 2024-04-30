import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:lottie/lottie.dart';
void main()
{
  runApp(MaterialApp(home: LottieEx(),));
}
class LottieEx extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Lottie"),),
      body: Center(
        child: Lottie.network("https://lottie.host/308758e4-87c0-41ed-a387-0521ff193743/B9op1KOZ3c.json"),
      ),
    );
  }

}