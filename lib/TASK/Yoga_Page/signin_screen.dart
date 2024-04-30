import 'package:flutter/material.dart';
import 'package:flutter_october_vs/TASK/Yoga_Page/home_screen.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shared_preferences/shared_preferences.dart';

// ignore: must_be_immutable
class Signin_Screen extends StatelessWidget
{
  final uemail=TextEditingController();
  final umobile=TextEditingController();
  final upwd=TextEditingController();
  late SharedPreferences preferences;

  @override
  Widget build(BuildContext context) {
  return Scaffold(
    backgroundColor: Color.fromRGBO(13, 1, 57, 1),
    body: Center(
      child: Column(
        children: [
          Container(
            height: 150,
            width: 150 ,
            decoration: BoxDecoration(
              image: DecorationImage(image: AssetImage("assets/yoga/womenyoga.png",),
              fit: BoxFit.fill)
              ),
            ),
            Text("WELCOME BUDDY",
            style: GoogleFonts.ptSans(
            fontSize: 20,fontWeight: FontWeight.bold,color: Colors.white),
            ),
            SizedBox(height: 13,),
            Text("Please Fill Your Details",
            style: GoogleFonts.ptSans(
            fontSize: 12,color: Colors.white),
            ),
            SizedBox(height: 40,),

            TextField(
              controller: uemail,
                style: TextStyle(color: Colors.white),
                decoration: InputDecoration(
                prefixIcon:Icon(Icons.person,color: Colors.white,) ,
                hintText: "Your Email ID",
                hintStyle: TextStyle(color: Colors.grey,fontSize: 13)
            ),),
            TextField(
              controller: umobile,
              style: TextStyle(color: Colors.white),
              decoration: InputDecoration(
                prefixIcon:Icon(Icons.call,color: Colors.white,) ,
                hintText: "Your Mobile Number",
                hintStyle: TextStyle(color: Colors.grey,fontSize: 13)
            ),),
           
            TextField(
              controller: upwd,
              style: TextStyle(color: Colors.white),
              decoration: InputDecoration(
                prefixIcon:Icon(Icons.lock,color: Colors.white,) ,
                suffixIcon: Icon(Icons.remove_red_eye_rounded),
                hintText: "Enter Your Password",
                hintStyle: TextStyle(color: Colors.grey,fontSize: 13)
            ),),
            SizedBox(height: 40,),

            ElevatedButton(onPressed: ()
            async{
              preferences = await SharedPreferences.getInstance();
              String email = uemail.text;
              String mobile =umobile.text;
              String password=upwd.text;

              if(email !="" && umobile !="" && password !="")
              {
                preferences.setString("Email", email);
                preferences.setString("Mobile", mobile);
                preferences.setString("Password", password);
              }
              Navigator.of(context).push(MaterialPageRoute(
                    builder: (context)=>Home_Screen()));
        
            },
            style: ElevatedButton.styleFrom(fixedSize: Size(200, 40)),
            child: Text("SIGNIN")
            ),
            SizedBox(height: 13,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Don't have already account? ",style: TextStyle(fontSize: 13,color: Colors.white),
                ),

                Text(" Sign in",
                style: TextStyle(fontSize: 12,color: Colors.blue),)

            ],),
             SizedBox(height: 13),
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