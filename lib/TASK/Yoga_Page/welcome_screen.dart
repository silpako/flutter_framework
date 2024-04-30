import 'package:flutter/material.dart';
import 'package:flutter_october_vs/TASK/Yoga_Page/login_Screen.dart';
import 'package:flutter_october_vs/TASK/Yoga_Page/signin_screen.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class Welcome_Screen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:Color.fromRGBO(13, 1, 57, 1),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 200,
              width: 200,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/yoga/womenyoga.png"),
                  fit: BoxFit.fill
                ),
              ),
            ),
            SizedBox(height: 10,),
            Text(
              'Hi There !!',
              style: GoogleFonts.ptSans(textStyle: TextStyle(
                fontWeight: FontWeight.bold,fontSize: 25,color: Colors.white
              )),
            ),
            SizedBox(height: 10,),
            Text("To keep connected with us Please select your option",
            style: GoogleFonts.ptSans(textStyle: TextStyle(
                fontWeight: FontWeight.normal,fontSize: 12,color: Colors.white
              )),),
            SizedBox(height: 80),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).pushReplacement(MaterialPageRoute(
                  builder: (context)=>Login_Screen()));
              },
              style: ElevatedButton.styleFrom(fixedSize: Size(200, 40)),
              child: Text('LOG IN'),
            ),
            SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).pushReplacement(MaterialPageRoute(
                  builder: (context)=>Signin_Screen()));
              },
              style: ElevatedButton.styleFrom(fixedSize: Size(200, 40)),
              child: Text('SIGN IN'),
            ),
            SizedBox(height: 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: 
              [
                SizedBox(width: 8),
                Icon(FontAwesomeIcons.facebook,size: 15,color: Colors.white,),
                SizedBox(width: 8),
                Icon(FontAwesomeIcons.instagram,size: 15,color: Colors.white,),
                SizedBox(width: 8),
                Icon(FontAwesomeIcons.youtube,size: 15,color: Colors.white,),
                SizedBox(width: 8),
                Icon(FontAwesomeIcons.twitter,size: 15,color: Colors.white,),

              ],
            )
            
          ],
        ),
        ),
    );
  }
}
