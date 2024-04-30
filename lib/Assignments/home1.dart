import 'package:flutter/material.dart';
import 'package:flutter_october_vs/assignments/login1.dart';
import 'package:flutter_october_vs/assignments/signup1.dart';
import 'package:google_fonts/google_fonts.dart';
void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Homee(),
  ));
}
class Homee extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(backgroundColor: Colors.white,
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
             Center(child: Text("Hello  There!",
             style: TextStyle(fontSize: 25,color: Colors.black,fontWeight: FontWeight.bold,),),),
             SizedBox(height: 5,),
             Center(
              child: Text("Automatically identity verification which enable you to ")),
              SizedBox(height: 5,),
              Center(child: Text("verify your identity")),
              SizedBox(height:10),
            Center(
              child: Image.asset(
                "assets/images/table.png",
                height: 300,
                width: 300,
              ),
            ),
             SizedBox(height:10),
            Center(
              child: ElevatedButton(
                onPressed: () {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (context) =>LoginPage()));
                },
                style: ElevatedButton.styleFrom(
                    primary: Color.fromARGB(255, 77, 48, 240),
                    onPrimary: Colors.white,
                    padding: EdgeInsets.fromLTRB( 100, 20, 100,20),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20))),
                child: Text("Login",
                    style: GoogleFonts.roboto(
                        color: Color.fromARGB(255, 243, 240, 240),
                        fontSize: 15,
                        fontStyle: FontStyle.normal)),
              ),
            ),
            SizedBox(height:10),
             Center(
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.of(context)
                        .push(MaterialPageRoute(builder: (context) => SignupPage()));
                  },
                  style: ElevatedButton.styleFrom(
                      primary: Colors.red,
                      onPrimary: Colors.black,
                      padding: EdgeInsets.fromLTRB( 100, 20, 100,20),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20))),
                  child: Text("Sign UP",
                      style: GoogleFonts.roboto(
                          color: Color.fromARGB(255, 0, 0, 0),
                          fontSize: 15,
                          fontStyle: FontStyle.normal)),
                ),
              
            )
          ],
        ));
  }
}