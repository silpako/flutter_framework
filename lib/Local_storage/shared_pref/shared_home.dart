import 'package:flutter/material.dart';
import 'package:flutter_october_vs/local_storage/shared_pref/shared_pref_ex.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Home_Shared extends StatefulWidget{
  @override
  State<Home_Shared> createState() => _Home_SharedState();
}

class _Home_SharedState extends State<Home_Shared> {
  late SharedPreferences preferences;
  late String username;
  @override
  void initState()
  {
    fetchData();
    super.initState();
  }
  void fetchData() async{
    preferences = await SharedPreferences.getInstance();
    setState(() {
      username = preferences.getString("Email")!;
    });
    
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Welcome $username"
        ,style: TextStyle(fontSize: 15),),
        backgroundColor: Colors.pinkAccent,),
        body: Center(
          child: ElevatedButton(onPressed: ()async{
            preferences = await SharedPreferences.getInstance();
            preferences.setBool("newUser", true);// user logout
            Navigator.of(context).push(MaterialPageRoute(builder: (context)=>Shared_Pref_Ex()));

          },
          child: Text("LogOut"),),
        ),
    );
  }
}