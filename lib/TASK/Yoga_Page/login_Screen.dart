import 'package:flutter/material.dart';
import 'package:flutter_october_vs/TASK/Yoga_Page/home_screen.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Login_Screen extends StatefulWidget
{
  @override
  State<Login_Screen> createState() => _Login_ScreenState();
}

class _Login_ScreenState extends State<Login_Screen> {
  final uname = TextEditingController();
  final pass = TextEditingController();
  late SharedPreferences preferences;

  @override
  Widget build(BuildContext context) {
  return Scaffold(
    backgroundColor: Color.fromRGBO(13, 1, 57, 1),
    body: Center(
      child: Column(
        children: [
          Container(
            height: 200,
            width: 200 ,
            decoration: BoxDecoration(
              image: DecorationImage(image: AssetImage("assets/yoga/womenyoga.png"),
              fit:BoxFit.fill),
              ),
            ),
            Text("WELCOME BACK !!",
            style: GoogleFonts.ptSans(
            fontSize: 20,fontWeight: FontWeight.bold,color: Colors.white),
            ),
            SizedBox(height: 10,),
            Text("Please Enter Your User Name and Password",
            style: GoogleFonts.ptSans(
            fontSize: 12,color: Colors.white),
            ),
            SizedBox(height: 40,),

            TextField(
              controller: uname,
              style: TextStyle(color: Colors.white),
              decoration: InputDecoration(
                prefixIcon:Icon(Icons.person,color: Colors.white,) ,
                hintText: "Your Username",
                hintStyle: TextStyle(color: Colors.grey)
            ),),
           
            TextField(
              controller: pass,
              style: TextStyle(color: Colors.white),
              decoration: InputDecoration(
                prefixIcon:Icon(Icons.lock,color: Colors.white,) ,
                hintText: "Enter Your Password",
                hintStyle: TextStyle(color: Colors.grey)
            ),),
            SizedBox(height: 40,),

            ElevatedButton(onPressed: ()
            async{
              preferences = await SharedPreferences.getInstance();
              String name = uname.text;
              String pwd = pass.text;
              if(name!="" && pwd !="")
              {
                preferences.setString("Name", name);
                preferences.setString("Password", pwd);
              }

              Navigator.of(context).push(MaterialPageRoute(builder: (context)=>Home_Screen()));
              uname.text="";
              pass.text="";
            },
            style: ElevatedButton.styleFrom(fixedSize: Size(200, 40),),
            child: Text("LOGIN")
            ),



            SizedBox(height: 10,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Don't have already account? ",style: TextStyle(fontSize: 10,color: Colors.white),
                ),

                Text(" Sign in",
                style: TextStyle(fontSize: 12,color: Colors.blue),)

            ],),
             SizedBox(height: 10),
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