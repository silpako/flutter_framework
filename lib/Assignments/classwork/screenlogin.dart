import 'package:flutter/material.dart';
// ignore: must_be_immutable
class Screen_Login  extends StatelessWidget
{
  String ? name;
  Screen_Login({super.key,required this.name});
  @override
  Widget build(BuildContext context) {
  return Scaffold(
    body: Center(
      child: Text("welcome to $name",
      style:const TextStyle(fontSize: 25),),
    ),
  );
  }

}