import 'package:flutter/material.dart';

 void main(){
  runApp(Mypage());
 }
 class Mypage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    bool isDarkTheme = MediaQuery.of(context).platformBrightness == Brightness.dark;
  return MaterialApp(
    theme:isDarkTheme? ThemeData.light(): ThemeData.dark(),
    home: Screen_ori(),
  );
  }

 }

// ignore: must_be_immutable
class Screen_ori extends StatelessWidget
{
  var orientation,height,width;
  bool? isLargeScreen;
  @override
  Widget build(BuildContext context) {
  orientation= MediaQuery.of(context).orientation;
  height = MediaQuery.of(context).size.height;
  width = MediaQuery.of(context).size.width;
  isLargeScreen = width<600;
  return Scaffold(
    appBar: AppBar(title: Text("Screen Orientation"),backgroundColor: Colors.redAccent,
    ),
    // body: orientation == Orientation.portrait
    // ?
    body:isLargeScreen==true?
    Container(color: Colors.blue,
    height: height/2,
    width: width/2,
    ):
    Container(color: Colors.purple,
    height: height/2,
    width: width/4,)

  );
  }

}