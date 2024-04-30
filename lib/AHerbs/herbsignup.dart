import 'package:flutter/material.dart';
import 'package:flutter_october_vs/AHerbs/category.dart';
import 'package:google_fonts/google_fonts.dart';

// ignore: must_be_immutable
class Signup_Herb extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            Stack(
              alignment: Alignment.center,
              children: [
                Container(
                  height: 200,
                  width: 600,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("assets/herbs/splashherb.jpg"),
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
                Positioned(
                  top: 130.0,
                  child: Text(
                    "Sign Up",
                    style: GoogleFonts.lakkiReddy(
                      fontSize: 40.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 10),
            Padding(
              padding: EdgeInsets.all(10),
              child: TextField(
                style: TextStyle(color: Colors.black),
                decoration: InputDecoration(
                    prefixIcon: Icon(Icons.person, color: Colors.black),
                    hintText: "Your Email ID",
                    hintStyle: TextStyle(color: Colors.grey, fontSize: 13),
                    border: OutlineInputBorder(borderRadius:BorderRadius.circular(40))),
              ),
            ),
            SizedBox(height:8),
            Padding(padding: EdgeInsets.all(10),
              child: TextField(
                style: TextStyle(color: Colors.black),
                decoration: InputDecoration(
                    prefixIcon: Icon(Icons.lock, color: Colors.black),
                    suffixIcon: Icon(Icons.remove_red_eye_rounded),
                    hintText: "Enter Your Password",
                    hintStyle: TextStyle(color: Colors.grey, fontSize: 13),
                    border: OutlineInputBorder(borderRadius: BorderRadius.circular(35),)),
              ),
            ),
            SizedBox(height: 30),
            ElevatedButton(onPressed: ()
            {
              Navigator.of(context).push(MaterialPageRoute(builder: (context)=>Herbs_Category()));
            }, 
            style: ElevatedButton.styleFrom(backgroundColor: Color.fromARGB(255, 1, 71, 3),
            padding: EdgeInsets.symmetric(horizontal: 30, vertical: 17),
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(45))) ,
            child: Text("Sign Up")),
            SizedBox(height: 13),
            Text("- or - "),
            SizedBox(height: 13,),
            ElevatedButton(onPressed: ()
            {
              Navigator.of(context).push(MaterialPageRoute(builder: (context)=>Herbs_Category()));
            }, 
            style: ElevatedButton.styleFrom(backgroundColor: Color.fromARGB(255, 1, 71, 3),
            padding: EdgeInsets.symmetric(horizontal: 50, vertical: 17),
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(45))) ,
            child: Text("Connect with Gmail"))
            
          ],
        ),
      ),
    );
  }
}
