import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
// ignore: must_be_immutable
class AllDisease extends StatelessWidget {
  var diseases = [
    "Acidity",
    "Asthma",
    "Common Cold",
    "Diabetes",
    "Flu",
    "Hypertension",
    "Migraine",
    "Obesity",
    "Pneumonia",
    "Sinusitis"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Center(
          child: Text("All Diseases",
              style: GoogleFonts.lakkiReddy(
                  fontSize: 25,
                  color: Color.fromARGB(255, 27, 107, 29),
                  fontWeight: FontWeight.bold))),
      ),
      body: ListView.builder(
        itemCount: diseases.length,
        itemBuilder: (BuildContext context, int index) {
          return Container(
            margin: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  spreadRadius: 2,
                  blurRadius: 5,
                  offset: Offset(0, 3),
                ),
              ],
            ),
            child: ListTile(
              title: Text(
                diseases[index],
                style: TextStyle(fontSize: 15),
              ),
              onTap: () {},
            ),
          );
        },
      ),
    );
  }
}
