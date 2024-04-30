import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_october_vs/TASK/WhatsUp/whatsapp_home.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
void main()
{
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Whatsapp_Splash(),));

}

class Whatsapp_Splash extends StatefulWidget{

  
  @override
  State<Whatsapp_Splash> createState() => _Whatsapp_SplashState();
}

class _Whatsapp_SplashState extends State<Whatsapp_Splash> {
  @override
  void initState()
  {
    super.initState();
    Timer(Duration(seconds:2),()
    {
      Navigator.of(context).push(MaterialPageRoute(builder: (context)=>Whatsapp_Home()));
    });
    
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(FontAwesomeIcons.whatsapp,size: 60,color:Color.fromARGB(255, 8, 133, 95),),
            SizedBox(height: 300,),
          
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("from",style: TextStyle(color: Colors.black),),
              ],
            ),
            Text("FACEBOOK",style: TextStyle(color:Color.fromARGB(255, 8, 133, 95),fontSize: 15,fontWeight: FontWeight.bold),)
          ],

        ),
      ),
    );
  }
}