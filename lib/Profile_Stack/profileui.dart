import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Profile_Stack(),
  ));
}

class Profile_Stack extends StatelessWidget {
  const Profile_Stack({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Profile",
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        elevation: 6,
        backgroundColor: Colors.blue[600],
        leading: Icon(Icons.menu),
        actions: [Icon(Icons.more_vert)],
      ),
      body: Center(
        child: Stack(
          children: [
            Container(color: Colors.white),
            Positioned.fill(
              left: 0,
              right: 0,
              top: 0,
              bottom: 350,
              child: Container(
                  height: 100,
                  width: 100,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage("assets/profile/mountain.jpg")))),
            ),
            Positioned(
              top:100,
              bottom: 300,
              left: 145,
              right: 100,
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(6.0),
                    child: CircleAvatar(
                      child: Icon(Icons.message),
                      backgroundColor: Colors.red[800],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(6.0),
                    child: Center(
                      child: CircleAvatar(
                          backgroundColor: Colors.black,
                          radius: 50,
                          backgroundImage: AssetImage("assets/profile/dEvid.jpg",),
                         
                          ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(6.0),
                    child: CircleAvatar(child: Icon(Icons.add)),
                  )
                ],
              ),
            ),
            Positioned(
              top: 250,
              bottom: 200,
              left: 60,
              right: 60,
              child: Column(
                children: [
                  Text(
                    "David Beckham",
                    style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                        color: Colors.black),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: Text(
                      "Model/Super Star",
                      style: TextStyle(color: Colors.blue[800], fontSize: 16),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}