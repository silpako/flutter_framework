import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: GridViewEx(),
  ));
}

class GridViewEx extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('GridView'),
        centerTitle: true,
      ),
      body: GridView.count(
        primary: false,
        padding: const EdgeInsets.all(4),
        crossAxisSpacing: 20,
        mainAxisSpacing: 20,
        crossAxisCount: 3,
        children: [
          _buildGridItem('Home', Icons.home, Colors.indigo),
          _buildGridItem('Search', Icons.search, Colors.green),
          _buildGridItem('Call', Icons.call, Colors.red),
          _buildGridItem('WiFi', Icons.wifi, Colors.teal),
          _buildGridItem('Bluetooth', Icons.bluetooth, Colors.cyan),
          _buildGridItem('Email', Icons.email, Colors.orange),
          _buildGridItem('Alarm', Icons.alarm, Colors.purple),
          _buildGridItem('Camera', Icons.camera, Colors.blueGrey),
          _buildGridItem('Music', Icons.music_note, Colors.teal),
        ],
      ),
    );
  }

  Widget _buildGridItem(String text, IconData? icon, Color? color) {
    return Container(
      decoration: BoxDecoration(
        color: color ?? Colors.grey,
        borderRadius: BorderRadius.horizontal(
          left: Radius.circular(10),
          right: Radius.circular(10),
        ),
      ),
      padding: const EdgeInsets.all(12),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center, 
        children: [
          if (icon != null) Icon(icon, size: 26, color: Colors.white),
          SizedBox(width:3),
          Flexible(
            child: Align(
              alignment: Alignment.centerLeft, 
              child: Text(
                text,
                style: TextStyle(color: Colors.white, fontSize: 16),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
