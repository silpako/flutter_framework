import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: ExpansionEx(),
  ));
}

// ignore: must_be_immutable
class ExpansionEx extends StatelessWidget {
  
  var colors=[Colors.blue,Colors.amber,Colors.deepPurpleAccent];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Expansion  Tile"),
      ),
      body: ListView(
        children: [ExpansionTile(
          title: Text("Tile1"),
          subtitle: Text("Colors"),
          children: List.generate(
              3,
              (index) => ListTile(
                    leading: CircleAvatar(
                      backgroundColor: colors[index],
                    ),
                  )),
        ),
        ExpansionTile(
          title: Text("Tile2"),
          subtitle: Text("Colors"),
          children: List.generate(
              3,
              (index) => ListTile(
                    leading: CircleAvatar(
                      backgroundColor: colors[index],
                    ),
                  )),
        ),
         ExpansionTile(backgroundColor: Colors.cyan,
          title: Text("Tile3"),
          subtitle: Text("Colors"),
          children: List.generate(
              3,
              (index) => ListTile(
                    leading: CircleAvatar(
                      backgroundColor: colors[index],
                    ),
                  )),
        ),
         ExpansionTile(
          title: Text("Tile4"),
          subtitle: Text("Colors"),
          children: List.generate(
              3,
              (index) => ListTile(
                    leading: CircleAvatar(
                      backgroundColor: colors[index],
                    ),
                  )),
        ),],
      ),
    );
  }
}