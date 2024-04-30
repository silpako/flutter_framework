import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: SliverEx2(),
  ));
}

class SliverEx2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: CustomScrollView(
          slivers: [
            SliverAppBar(
              backgroundColor: Color.fromARGB(255, 16, 216, 23),
              floating: true,
              pinned: false,
              title: Text(
                "FARMERS FRESH ZONE",
                style: GoogleFonts.firaSans(
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              bottom: AppBar(
                backgroundColor: Color.fromARGB(255, 16, 216, 23),
                title: Container(
                  height: 40,
                  width: double.infinity,
                  color: Colors.white,
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: "Search for Vegetables, Fruits...",
                      prefixIcon: Icon(Icons.search),
                    ),
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
