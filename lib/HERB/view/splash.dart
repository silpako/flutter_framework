import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_october_vs/HERB/view/signup.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MaterialApp(home: Splash(), debugShowCheckedModeBanner: false));
}

class Splash extends StatefulWidget {
  @override
  State<Splash> createState() => _YogaSplashState();
}

class _YogaSplashState extends State<Splash> {
  void initState()
  {
    Timer(Duration(seconds: 5), ()
    {
      Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context)=>Signupherb()));
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(12, 170, 9, 1),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "FRESH HERBS",
              style: GoogleFonts.sansita(
                fontSize: 35.0,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
         SizedBox(height: 40,),
          CircleAvatar(
                backgroundColor: Colors.white,
                radius: 70,
                child: Container(
                  height: 100,
                  width: 100,
                decoration: BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage("assets/herbs/log.jpeg",),
      ),
    ),
  ),
),
  SizedBox(height: 70),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "From Nature,",
                  style: GoogleFonts.sansita(
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                SizedBox(height: 10),
                Text(
                  "For Your Health,",
                  style: GoogleFonts.sansita(
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
