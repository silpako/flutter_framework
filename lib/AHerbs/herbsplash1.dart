import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_october_vs/AHerbs/herbsignup.dart';
import 'package:google_fonts/google_fonts.dart';
void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Splash_Herbs(),
  ));
}
class Splash_Herbs extends StatefulWidget {
  @override
  State<Splash_Herbs> createState() => _Splash_HerbsState();
}
class _Splash_HerbsState extends State<Splash_Herbs> {
  @override
  void initState() {
    Timer(Duration(seconds: 2), () {
      Navigator.of(context).push(MaterialPageRoute(builder: (context)=>Signup_Herb()
      ));
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
                image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage
                    ("assets/herbs/splashherb.jpg"))),
                    ),
          Positioned(
            top: 130.0,
            left: 0,
            right: 0,
            child: Center(
              child: Text(
                "Fresh Herbs",
                style: GoogleFonts.lakkiReddy(
                   fontSize: 40.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,

                )),
              ),
            ),
            Positioned(
            bottom: 100.0,
            left: 0,
            right: 0,
            child: Center(
              child: Text(
                "From Nature,",
                style: GoogleFonts.lakkiReddy(
                   fontSize: 24.0,
                  fontWeight: FontWeight.normal,
                  color: Colors.white,

                )),
              ),
            ),
            Positioned(
            bottom: 70.0,
            left: 0,
            right: 0,
            child: Center(
              child: Text(
                "For Your Health,",
                style: GoogleFonts.lakkiReddy(
                   fontSize: 24.0,
                  fontWeight: FontWeight.normal,
                  color: Colors.white,

                )),
              ),
            ),
        ],
      ),
    );
  }
}
