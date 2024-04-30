import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Herbs_ayurvedic(),
  ));
}

class Herbs_ayurvedic extends StatelessWidget {
  const Herbs_ayurvedic({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Ayurvedic Herbs",
            style: GoogleFonts.lakkiReddy(
                fontSize: 25,
                color: Color.fromARGB(255, 27, 107, 29),
                fontWeight: FontWeight.bold)),
        centerTitle: true,
        backgroundColor: Colors.white,
      ),
      body: Column(
        children: [
          Container(
            height: 45,
            margin: EdgeInsets.all(8),
            padding: EdgeInsets.symmetric(horizontal: 18),
            decoration: BoxDecoration(
              color: Color.fromARGB(255, 202, 198, 198),
              borderRadius: BorderRadius.circular(20),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Search...",
                  style: TextStyle(color: Colors.black),
                ),
                Icon(Icons.search, color: Colors.black,)
              ],
            ),
          ),
          Expanded(
            child: GridView.count(
              crossAxisCount: 3, // Adjust according to screen width
              children: [
                buildCategoryContainer("Mint"),
                buildCategoryContainer("Tulsi"),
                buildCategoryContainer("Ashwagandha"),
                buildCategoryContainer("Brahmi"),
                buildCategoryContainer("Aleo Vera"), 
                buildCategoryContainer(""),
                
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget buildCategoryContainer(String text) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          color: Color.fromARGB(255, 136, 186, 138),
        ),
        child: TextButton(
          onPressed: () {
            // Handle button press
          },
          child: Text(
            text,
            style: GoogleFonts.lakkiReddy(
              color: Colors.black,
              fontSize: 15,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}
