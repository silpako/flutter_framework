import 'package:flutter/material.dart';
import 'package:flutter_october_vs/HERB/view/category.dart';
import 'package:google_fonts/google_fonts.dart';
class Signupherb extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          color: Color.fromRGBO(12, 170, 9, 1),
        ),
        child: Column(
          children: [
            Container(
              height: 70,
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Welcome To,",
                      style: GoogleFonts.sansita(
                          color: Colors.white,
                          fontSize: 25,
                          fontWeight: FontWeight.bold),
                    ),
                    Text(
                      "Fresh Herbs",
                      style: GoogleFonts.sansita(
                          color: Colors.white,
                          fontSize: 15,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
            ),
            CircleAvatar(
              backgroundColor: Colors.white,
              radius: 30,
              child: Container(
                height: 38,
                width: 38,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage(
                      "assets/herbs/log.jpeg",
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: 20,),
            Expanded(
              child: Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30),
                  ),
                  color: Colors.white,
                ),
                child: Column(
                  children: [
                    SizedBox(height: 30,),
Padding(
  padding: EdgeInsets.all(10),
  child: SizedBox(
    height: 40, 
    width: 400, 
    child: TextField(
      style: TextStyle(color: Colors.black),
      decoration: InputDecoration(
        prefixIcon: Icon(Icons.email, color: Colors.black, size: 15),
        hintText: "Email ID",
        hintStyle: TextStyle(color: Colors.grey, fontSize: 13),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(30),
          borderSide: BorderSide(color: Colors.grey),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(30),
          borderSide: BorderSide(color: Colors.grey), 
        ),
      ),
    ),
  ),
),
Padding(
  padding: EdgeInsets.all(10),
  child: SizedBox(
    height: 40, 
    width: 400, 
    child: TextField(
      style: TextStyle(color: Colors.black),
      decoration: InputDecoration(
        prefixIcon: Icon(Icons.lock, color: Colors.black, size: 15),
        suffixIcon: Icon(Icons.remove_red_eye_rounded,color: Colors.grey,size: 15,),
        hintText: "Password",
        hintStyle: TextStyle(color: Colors.grey, fontSize: 13),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(30),
          borderSide: BorderSide(color: Colors.grey),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(30),
          borderSide: BorderSide(color: Colors.grey), 
        ),
      ),
    ),
  ),
),
Padding(
  padding: EdgeInsets.all(10),
  child: SizedBox(
    height: 40, 
    width: 400,
    child: TextField(
      style: TextStyle(color: Colors.black),
      decoration: InputDecoration(
        prefixIcon: Icon(Icons.lock, color: Colors.black, size: 15),
        suffixIcon: Icon(Icons.remove_red_eye_rounded,color: Colors.grey,size: 15,),
        hintText: "Confirm Password",
        hintStyle: TextStyle(color: Colors.grey, fontSize: 13),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(30),
          borderSide: BorderSide(color: Colors.grey), // Default border color
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(30),
          borderSide: BorderSide(color: Colors.grey), // Border color when focused
        ),
      ),
    ),
  ),
),


                    SizedBox(height: 30,),
                    MaterialButton(
                      color: Color.fromRGBO(12, 170, 9, 1),
                      shape: StadiumBorder(),
                      minWidth: 200,
                      height: 40,
                      onPressed: () {
                         Navigator.of(context).push(MaterialPageRoute(builder: (context)=>CategoryHerb()));
                      },
                      child: Text(
                        "Sign Up",
                        style: GoogleFonts.sansita(
                            color: Colors.white,
                            fontSize: 12,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    SizedBox(height: 10,),
                    Text("- or -",style: GoogleFonts.sansita(fontSize: 10,),),
                    SizedBox(height: 10,),
                    MaterialButton(
                      color: Color.fromRGBO(12, 170, 9, 1),
                      shape: StadiumBorder(),
                      minWidth: 200,
                      height: 40,
                      onPressed: () {
                        Navigator.of(context).push(MaterialPageRoute(builder: (context)=>CategoryHerb()));
                      },
                      child: Text(
                        "Connect with Gmail",
                        style: GoogleFonts.sansita(
                            color: Colors.white,
                            fontSize: 12,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
