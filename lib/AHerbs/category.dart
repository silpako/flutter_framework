import 'package:flutter/material.dart';
import 'package:flutter_october_vs/AHerbs/Alldiseaselist.dart';
import 'package:flutter_october_vs/AHerbs/ayurvedic_herbs.dart';
import 'package:flutter_october_vs/AHerbs/beautips.dart';
import 'package:flutter_october_vs/AHerbs/childcare.dart';
import 'package:flutter_october_vs/AHerbs/introduction.dart';
import 'package:google_fonts/google_fonts.dart';

class Herbs_Category extends StatelessWidget {
  const Herbs_Category({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text("Category",
            style: GoogleFonts.lakkiReddy(
                fontSize: 25,
                color: Color.fromARGB(255, 27, 107, 29),
                fontWeight: FontWeight.bold)),
        centerTitle: true,
        actions: [
          SizedBox(width: 10,),
          Icon(Icons.search,color:Color.fromARGB(128, 0, 0, 0),),
          SizedBox(width: 10,),
          Icon(Icons.settings,color: Color.fromARGB(128, 0, 0, 0),),
        ],
      ),
      body: GridView.count(
        crossAxisCount: 2,
        children: [
          Padding(
            padding: const EdgeInsets.all(10),
            child: Container(
              height: 100,
              width: 100,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                color: Color.fromARGB(255, 136, 186, 138)
              ),
              child: TextButton(
                  onPressed: () {
                    Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) =>  Intro_herb()));
                  },
                  child: Text(
                    "Introduction",
                    style: GoogleFonts.lakkiReddy(color: Colors.black,
                        fontSize: 15, fontWeight: FontWeight.bold),
                  )),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: 100,
              width: 100,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                color: Color.fromARGB(255, 136, 186, 138),
              ),
              child: TextButton(
                  onPressed: () {
                  Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => Herbs_ayurvedic()));
                  },
                  child: Text(
                    "Ayurvedic Herbs",
                    style: GoogleFonts.lakkiReddy(color: Colors.black,
                        fontSize: 15, fontWeight: FontWeight.bold),
                  )),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: 100,
              width: 100,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                color: Color.fromARGB(255, 136, 186, 138),
              ),
              child: TextButton(
                  onPressed: () {
                  Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => AllDisease()));
                  },
                  child: Text(
                    "All Diseases",
                    style: GoogleFonts.lakkiReddy(color: Colors.black,
                        fontSize: 15, fontWeight: FontWeight.bold),
                  )),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: 100,
              width: 100,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                color: Color.fromARGB(255, 136, 186, 138),
              ),
              child: TextButton(
                  onPressed: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => BeautiTip()));
                    },
                  child: Text(
                    "Beauti Tips",
                    style: GoogleFonts.lakkiReddy(color: Colors.black,
                        fontSize: 15, fontWeight: FontWeight.bold),
                  )),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: 100,
              width: 100,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                color: Color.fromARGB(255, 136, 186, 138),
              ),
              child: TextButton(
                  onPressed: () {
                    //Navigator.of(context).push(
                     // MaterialPageRoute(builder: (context) => GO_FunMethod()));
                     },
                  child: Text(
                    "Weight Gain",
                    style: GoogleFonts.lakkiReddy(color: Colors.black,
                        fontSize: 15, fontWeight: FontWeight.bold),
                  )),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: 100,
              width: 100,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                color: Color.fromARGB(255, 136, 186, 138),
              ),
              child: TextButton(
                  onPressed: () {
                    Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => Child_care()));
                  },
                  child: Text(
                    "Child care",
                    style: GoogleFonts.lakkiReddy(color: Colors.black,
                        fontSize: 15, fontWeight: FontWeight.bold),
                  )),
            ),
          ),
        ],
      ),
    );
  }
}