import 'package:flutter/material.dart';
import 'package:flutter_october_vs/TASK/EmergencyUI/secondpage.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class EmergencyLast extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        leading: IconButton(onPressed: (){
           Navigator.of(context).push(MaterialPageRoute(builder: (context)=>EmTimer()));
        }, 
            icon: Icon(Icons.arrow_back)),
        title: Text(
          "Emergency Contact List",
        ),
        actions: [
          
          Padding(
            padding: EdgeInsets.only(right: 15),
            child: IconButton(onPressed: (){}, 
            icon: Icon(Icons.add_circle_outline)),
          )
        ],
      ),
      body: ListView(
        children: [
          Card(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
            color: Colors.blue,
            shadowColor: Colors.blueAccent,
            elevation: 10,
          ),
          Card(
            child: ListTile(
              leading: CircleAvatar(
                  backgroundImage: AssetImage("assets/emergency/James.jpg")),
              title: Text(
                "James Paker",
                style: GoogleFonts.lora(fontWeight: FontWeight.bold),
              ),
              subtitle: Text("408-747-72"),
              trailing: Icon(
                Icons.more_vert,
                color: Colors.black,
              ),
            ),
          ),
          Card(
            child: ListTile(
              leading: CircleAvatar(
              backgroundImage:AssetImage("assets/emergency/christina.jpg")),
              title: Text("Christina Belt",
              style: GoogleFonts.lora(fontWeight: FontWeight.bold),
              ),
              subtitle: Text("309-337-8350"),
              trailing: Icon(
                Icons.more_vert,
                color: Colors.black,
              ),
            ),
          ),
          Card(
            child: ListTile(
              leading: CircleAvatar(
                  backgroundImage: AssetImage("assets/emergency/gerge.jpg")),
              title: Text(
                "George Graham",
                style: GoogleFonts.lora(fontWeight: FontWeight.bold),
              ),
              subtitle: Text("309-295-8912"),
              trailing: Icon(
                Icons.more_vert,
                color: Colors.black,
              ),
            ),
          ),
          Card(
            child: ListTile(
              leading: CircleAvatar(
                  backgroundImage:
                      AssetImage("assets/emergency/jenifer.jpg")),
              title: Text(
                "Jennifer",
                style: GoogleFonts.lora(fontWeight: FontWeight.bold),
              ),
              subtitle: Text(
                "914-684-6019",
                style: TextStyle(color: Colors.black),
              ),
              trailing: Icon(
                Icons.more_vert,
                color: Colors.black
              ),
            ),
          ),
          Card(
            child: ListTile(
              leading: CircleAvatar(
                  backgroundImage:
                      AssetImage("assets/emergency/carls.jpg")),
              title: Text(
                "Carl Geer",
                style: GoogleFonts.lora(fontWeight: FontWeight.bold),
              ),
              subtitle: Text(
                "916-232-3746",
                style: TextStyle(color: Colors.grey),
              ),
              trailing: Icon(
                Icons.more_vert,
               color: Colors.black,
              ),
            ),
          ),
          Card(
            child: ListTile(
              leading: CircleAvatar(
                  backgroundImage:
                      AssetImage("assets/emergency/jamesP.jpg")),
              title: Text(
                "James Powers",
                style: GoogleFonts.lora(fontWeight: FontWeight.bold),
              ),
              subtitle: Text(
                "610-970-6818",
                style: TextStyle(color: Colors.grey),
              ),
              trailing: Icon(
                Icons.more_vert,
                color: Colors.black
              ),
            ),
          ),
        ],
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(
          FontAwesomeIcons.asterisk,
          size: 20,
        ),
        elevation: 3.0,
        backgroundColor: Colors.red,
      ),
      bottomNavigationBar: BottomAppBar(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            IconButton(
              icon: Icon(Icons.home, color: Colors.grey),
              onPressed: () {},
            ),
            IconButton(
              icon: Icon(Icons.widgets, color: Colors.grey),
              onPressed: () {},
            ),
            IconButton(
              icon: Icon(Icons.file_copy, color: Colors.grey),
              onPressed: () {},
            ),
            IconButton(
              icon: Icon(Icons.person, color: Colors.grey),
              onPressed: () {},
            ),
          ],
        ),
      ),
    );
  }
}
