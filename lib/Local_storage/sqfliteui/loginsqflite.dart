import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
void main(){
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Login_Sqlflite(),));
}

class Login_Sqlflite extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
   return Scaffold(
    body: Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage("assets/sqlfite/lines.jpg"),
          fit: BoxFit.cover
          )
          ),
 child: Column(
          children: [
            Container(
              height: 100,
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "PUNCH",
                      style: GoogleFonts.poppins(
                          color: Colors.white,
                          fontSize: 30,
                          fontWeight: FontWeight.bold),
                    ),
                    Text(
                      "PUNCH.EARN.REPEAT",
                      style: GoogleFonts.poppins(
                          color: Colors.white,
                          fontSize: 10,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
            ),
  
      SizedBox(height:30,),  
      Expanded(child:  Container(
        width: double.infinity,
        height: double.infinity,
          decoration: BoxDecoration( 
            borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(50),
                  topRight: Radius.circular(50),
                  ),
                  color: Colors.white
              ), 
           child: Column( 
                children: [  
                  Text("Log In",
                  style: GoogleFonts.poppins(
                          color: Colors.black,
                          fontSize: 25,
                          fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 30,),
                
             Padding(padding: EdgeInsets.symmetric(vertical: 10 ,horizontal: 15),
               child: TextField(
                    style: TextStyle(color: Colors.black),
                    decoration: InputDecoration(
                    hintText: "Email Id",
                    hintStyle: TextStyle(color: Colors.grey, fontSize: 13),
                    border: OutlineInputBorder(borderRadius:BorderRadius.circular(30))),
                         ),
             ),  
             Padding(padding: EdgeInsets.symmetric(vertical: 10 ,horizontal: 15),
               child: TextField(
                    style: TextStyle(color: Colors.black),
                    decoration: InputDecoration(
                    hintText: "Password",
                    hintStyle: TextStyle(color: Colors.grey, fontSize: 13),
                    border: OutlineInputBorder(borderRadius:BorderRadius.circular(30))),
                         ),
             ),
             SizedBox(height: 10,),
            
             MaterialButton(
                    color: Colors.black,  
                    shape: StadiumBorder(), 
                    minWidth: 400,                 
                    height: 50,
                    onPressed: (){}, 
                    child: Text("LOGIN",style: TextStyle(  
                      color: Colors.white, fontSize: 15,
                      fontWeight: FontWeight.bold),),),
                  
                       ],
              ),
        ),)
  
    ],
  
  ),
),
   );
  }


}