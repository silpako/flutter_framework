import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
void main(){
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Home_Sqflite(),));
}

class Home_Sqflite extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
   return Scaffold(
    body: Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage("assets/sqlfite/bubbles.jpg"),
          fit: BoxFit.cover
          )
          ),
 child: Column(
          children: [
            Container(
              height: 150,
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "PUNCH",
                      style: GoogleFonts.poppins(
                          color: Colors.black,
                          fontSize: 30,
                          fontWeight: FontWeight.bold),
                    ),
                    Text(
                      "PUNCH.EARN.REPEAT",
                      style: GoogleFonts.poppins(
                          color: Colors.black,
                          fontSize: 15,
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
                  Icon(Icons.credit_card_rounded,size: 50,), 
                  Text("Random",
                  ),
                SizedBox(height: 150,),
  
                  MaterialButton(
                    color: Colors.black,  
                    shape: StadiumBorder(), 
                    minWidth: 400,                 
                    height: 50,
                    onPressed: (){}, 
                    child: Text("SIGNUP",style: TextStyle(  
                      color: Colors.white, fontSize: 15,
                      fontWeight: FontWeight.bold),),),
                      SizedBox(height: 30,),

                  MaterialButton(  
                    color: Colors.white,
                    shape: StadiumBorder(), 
                    minWidth: 400,                 
                    height: 50,
                    onPressed: (){}, 
                    child: Text("LOGIN",style: TextStyle(  
                      color: Colors.black, fontSize: 15,
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