import 'package:flutter/material.dart';
import 'package:flutter_october_vs/TASK/EmergencyUI/secondpage.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: EmergencyHome(),
  ));
}

class EmergencyHome extends StatefulWidget {
  @override
  State<EmergencyHome> createState() => _EmergencyHomeState();
}

class _EmergencyHomeState extends State<EmergencyHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Stack(
          children: [
            Positioned(
              top: 0,
              bottom: 300,
              right: 0,
              left: 0,
              child: Container(
                height: 150,
                width: 240,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.vertical(bottom: Radius.elliptical(80, 80)),
                  image: DecorationImage(
                    image: AssetImage("assets/emergency/EmHome.jpeg"),
                    fit: BoxFit.fill,
                  ),
                ),
              ),
            ),
            Positioned(
              left: 160,
              top: 300,
              bottom: 65,
              child: Text(
                "EMERGENCY",
                style: GoogleFonts.archivoBlack(
                  fontSize: 24,
                  color: Color.fromARGB(221, 223, 9, 9),
                ),
              ),
            ),
            Positioned(
              left: 130,
              top: 325,
              bottom: 66,
              child: Text(
                "ASSISTANCE FOR",
                style: GoogleFonts.archivoBlack(
                  fontSize: 24,
                  color: Color.fromARGB(221, 223, 9, 9),
                ),
              ),
            ),
            Positioned(
              left: 160,
              top: 350,
              bottom: 60,
              child: Text(
                "CUSTOMERS",
                style: GoogleFonts.archivoBlack(
                  fontSize: 24,
                  color: Color.fromARGB(221, 223, 9, 9),
                ),
              ),
            ),
            Positioned(
              right: 100,
              left: 120,
              top: 400,
              bottom: 40,
              child: Text(
                " Lorem ipsum dolor sit amet, consectetur ",
                style: GoogleFonts.kanit(fontSize: 15, color: Colors.blueGrey),
              ),
            ),
            Positioned(
              right: 100,
              left: 150,
              top: 420,
              bottom: 10,
              child: Text(
                "adipiscing elit, sed do eiusmod",
                style: GoogleFonts.kanit(fontSize: 15, color: Colors.blueGrey),
              ),
            ),
            Positioned(
              left: 120,
              right: 120,
              top: 500,
              bottom: 20,
              child: SizedBox(
                width: 350,
                child: ElevatedButton(
                  onPressed: () {
                   Navigator.of(context).push(MaterialPageRoute(builder: (context)=>EmTimer()));
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text("Let's  get started"),
                      Icon(
                        Icons.arrow_forward_rounded,
                        size: 20,
                      )
                    ],
                  ),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color.fromARGB(221, 223, 9, 9),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                    padding: EdgeInsets.symmetric(vertical: 20, horizontal: 10),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
