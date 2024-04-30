import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
// ignore: must_be_immutable
class Body_Page extends StatelessWidget {
  var body = [
    "Abhyanga",
    "Shiroabhyanga",
    "Padabhyanga",
    "Pristhabhyanga",
    "Pada Mardana",   
    
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
       backgroundColor: Color.fromRGBO(12, 170, 9, 1),
        title: Text("Body Massages",
              style: GoogleFonts.sansita(
                  color: Colors.white,
                  )),
      ),
      body: ListView.builder(
        itemCount: body.length,
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
                body[index],
                style: GoogleFonts.sansita(fontSize: 13,),
              ),
              onTap: () {},
            ),
          );
        },
      ),
    );
  }
}
