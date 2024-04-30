import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(debugShowCheckedModeBanner: false,
  home: Profile_ex(),));
}
class Profile_ex extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Padding(
          padding: const EdgeInsets.all(8),
          child: CircleAvatar(
            backgroundImage:NetworkImage("https://cdn2.iconfinder.com/data/icons/ios-7-icons/50/user_male2-64.png") ,
          ),
        ),
        actions: [
          Padding(
            padding:  EdgeInsets.only(right: 10),
            child: Text("Edit",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.grey,fontSize: 20),),
          )
        ],
      ),
      body: Column(
        children: [
          SizedBox(height: 10,),
          Padding(
            padding:  EdgeInsets.only(right: 300),
            child: Text("Profile",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),
          ),
          ListTile(
            leading: Text("View Profile",style: TextStyle(color: Colors.black,fontSize: 18),),
            trailing: IconButton(onPressed: () {  }, icon: Icon(Icons.arrow_forward_outlined,color: Colors.black,size: 20,),)
          ),
          ListTile(
              leading: Text("Orders",style: TextStyle(color: Colors.black,fontSize: 18),),
              trailing: IconButton(onPressed: () {  }, icon: Icon(Icons.arrow_forward_outlined,color: Colors.black,size: 20,),)
          ),
          ListTile(
              leading: Text("Wishlist",style: TextStyle(color: Colors.black,fontSize: 18),),
              trailing: IconButton(onPressed: () {  }, icon: Icon(Icons.arrow_forward_outlined,color: Colors.black,size: 20,),)
          ),
          ListTile(
              leading: Text("Gift Cards",style: TextStyle(color: Colors.black,fontSize: 18),),
              trailing: IconButton(onPressed: () {  }, icon: Icon(Icons.arrow_forward_outlined,color: Colors.black,size: 20,),)
          ),
          SizedBox(height: 10,),
          Padding(
            padding: const EdgeInsets.only(right: 290),
            child: Text("Settings",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),
          ),
          ListTile(
              leading: Text("Shipping & Returns",style: TextStyle(color: Colors.black,fontSize: 18),),
              trailing: IconButton(onPressed: () {  }, icon: Icon(Icons.arrow_forward_outlined,color: Colors.black,size: 20,),)
          ),
          ListTile(
              leading: Text("Help",style: TextStyle(color: Colors.black,fontSize: 18),),
              trailing: IconButton(onPressed: () {  }, icon: Icon(Icons.arrow_forward_outlined,color: Colors.black,size: 20,),)
          ),
          ListTile(
              leading: Text("Contact Us",style: TextStyle(color: Colors.black,fontSize: 18),),
              trailing: IconButton(onPressed: () {  }, icon: Icon(Icons.arrow_forward_outlined,color: Colors.black,size: 20,),)
          ),
          ListTile(
              leading: Text("About Us",style: TextStyle(color: Colors.black,fontSize: 18),),
              trailing: IconButton(onPressed: () {  }, icon: Icon(Icons.arrow_forward_outlined,color: Colors.black,size: 20,),)
          ),
          SizedBox(height: 20,),
          MaterialButton(onPressed: (){},
            color: Colors.white60,
            shape: StadiumBorder(),
          child: Text("Log out",style: TextStyle(color: Colors.black),),)
        ],
      ),
    );
  }
}
