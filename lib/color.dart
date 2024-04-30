import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: ColorChange(),
  ));
}

class ColorChange extends StatefulWidget {
  const ColorChange({super.key});

  @override
  State<ColorChange> createState() => _ColorChangeState();
}

class _ColorChangeState extends State<ColorChange> {
  Color? bgcolor;
  bool showBulb = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgcolor,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: GestureDetector(
                onTap: () {
                  setState(() {
                    bgcolor = Colors.red;
                  });
                },
                child: Container(
                  height: 40,
                  width: 100,
                  color: Colors.red,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: GestureDetector(
                onTap: () {
                  setState(() {
                    bgcolor = Color.fromARGB(255, 165, 202, 0);
                  });
                },
                child: Container(
                  height: 40,
                  width: 100,
                  color:  Color.fromARGB(255, 165, 202, 0),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: GestureDetector(
                onTap: () {
                  setState(() {
                    bgcolor = Colors.deepPurpleAccent;
                  });
                },
                child: Container(
                  height: 40,
                  width: 100,
                  color: Colors.deepPurpleAccent,
                ),
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        foregroundColor: Colors.blueAccent,
        backgroundColor: Colors.pink,
        onPressed: () {
          setState(() {
            if (showBulb) {
              showBulb = false;
            } else {
              showBulb = true;
            }
          });
        },
         child: Icon(
                showBulb ? Icons.lightbulb : Icons.lightbulb_outline_rounded)));
      
    
  }
}