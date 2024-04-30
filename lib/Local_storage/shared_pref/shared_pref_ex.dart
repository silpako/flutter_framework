import 'package:flutter/material.dart';
import 'package:flutter_october_vs/local_storage/shared_pref/shared_home.dart';
import 'package:shared_preferences/shared_preferences.dart';
void main()
{
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Shared_Pref_Ex(),));
}
class Shared_Pref_Ex extends StatefulWidget{
  @override
  State<Shared_Pref_Ex> createState() => _Shared_Pref_ExState();
}

class _Shared_Pref_ExState extends State<Shared_Pref_Ex> {
  final uname_controller = TextEditingController();
  final pass_controller = TextEditingController();
  late bool isAnewuser;
  late SharedPreferences preferences;
  
  void initState(){
    checkTheUserIsAlreadyLoggedIn();
    super.initState();
  }
  void checkTheUserIsAlreadyLoggedIn() async{
    preferences = await SharedPreferences.getInstance();
    isAnewuser= preferences.getBool("newUser")?? true;
    if(isAnewuser == false){
      Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context)=>Home_Shared()));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Login Using Shared"),
      backgroundColor: Colors.pinkAccent,),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Login Page",style: TextStyle(fontSize: 20),
            ),
            Padding(padding: EdgeInsets.all(10),
            child: TextField(
              controller: uname_controller,
              decoration: InputDecoration(
              border: OutlineInputBorder(),hintText: "Login"
            ),),
            ),
            Padding(padding: EdgeInsets.all(10),
            child: TextField(
            controller:pass_controller ,
            decoration: InputDecoration(
            border: OutlineInputBorder(),hintText: "Password"
            ),),
            ),
            OutlinedButton(
              style: OutlinedButton.styleFrom(
                backgroundColor: Colors.pinkAccent),
              onPressed: () async{
                preferences = await SharedPreferences.getInstance();
                String email = uname_controller.text;
                String pwd = pass_controller.text;

                if(email != "" &&  pwd != ""){
                  preferences.setString("Email", email);
                  preferences.setString("Pass", pwd);
                  preferences.setBool("newUser", false);

                  Navigator.of(context).push(MaterialPageRoute(builder: (context)=>Home_Shared()));
                  uname_controller.text="";
                  pass_controller.text="";
                }else{
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(content: Text("Please Fill all the Fields")));
                }
                
              }, 
            child:Text("Login Here",style: TextStyle(color: Colors.white),))
            

          ],
        ),
      ),
    );
  }
}