import 'package:flutter/material.dart';
import 'package:flutter_october_vs/Screens/home.dart';
import 'package:flutter_october_vs/Screens/signup.dart';
import 'package:google_fonts/google_fonts.dart';
void main()
{
  runApp(MaterialApp(home: Login(),));
}
// ignore: must_be_immutable
class Login extends StatelessWidget{
  // for fetching values from text
  final uname_ctrl=TextEditingController();
  final pwd_ctrl = TextEditingController();

  String username="luminar@gmail.com";
  String password="123456";

  @override
  Widget build(BuildContext context) {
   return Scaffold(
    appBar: AppBar(title: Text("Login"),),
    body: Center(
    child:Column(
      children: [
        Image.asset("assets/images/man.png",height: 100,width: 100),
        Padding
        (
          padding: const EdgeInsets.all(15),
          child: TextField(
            controller: uname_ctrl,
            decoration: InputDecoration
            (
              hintText: "Username",
              helperText: "Username should be an email",
              labelText: "Username",
              prefixIcon: Icon(Icons.person),
              border: OutlineInputBorder(borderRadius:BorderRadius.circular(30))
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(15.0),
          child: TextField(
            controller: pwd_ctrl,
            obscureText: true,
            obscuringCharacter: "*",
            decoration: InputDecoration
            (
              hintText: "Password",
              helperText: "Password should be atleast 6 characters",
              labelText: "Password",
              prefixIcon: Icon(Icons.lock),
              suffixIcon: Icon(Icons.remove_red_eye_rounded),
              border: OutlineInputBorder(borderRadius:BorderRadius.circular(30))
            ),
          ),
        ),
        ElevatedButton(onPressed: () {
          if(uname_ctrl.text !="" && pwd_ctrl.text !="")
          {
            if(uname_ctrl.text == username && pwd_ctrl.text == password){
            Navigator.of(context).push(MaterialPageRoute(builder: (context)=>Home()));
              
            }
            else
           {
            ScaffoldMessenger.of(context).showSnackBar(SnackBar(
              backgroundColor: Colors.red,
              content:Text("username/password incorrect")));
           }
         }
        else
        {
          ScaffoldMessenger.of(context).showSnackBar(SnackBar(
            backgroundColor: Colors.red,
              content:Text("username and password should not be null")));
        }
        },
        child: Text("Login")),
        TextButton(onPressed: (){
          Navigator.of(context).push(MaterialPageRoute(builder: (context)=>SignUp()));
        }, 
        child: Text("Sign Up for Facebook ",style: GoogleFonts.outfit
        (color: Colors.black,
        fontSize: 10,
        fontStyle:FontStyle.normal )
        ,)
        ),
      ],
    ),
   )
   );
  }

}