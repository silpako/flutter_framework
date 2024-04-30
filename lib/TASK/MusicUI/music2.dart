import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Grid_music2(),
  ));
}

// ignore: must_be_immutable
class Grid_music2 extends StatelessWidget {
  Grid_music2({super.key});

  var images = [
    "assets/music/chandhpott.jpg",
    "assets/music/chandrolsavm.jpg",
    "assets/music/chithram.jpg",
    "assets/music/kaliyattam.jpg",
    "assets/music/katt.jpg",
  ];
  var title = [
    "Chandupottu",
    "Chadrolsavam",
    "Chithram",
    "Kaliyattam",
    "Katte Nee",
  ];
  var subtitle = [
    "Ep.Vidayasagar",
    "Ep.Vidayasagar",
    "Kannur Rajan",
    "Kaithapram",
    "M.G.Radhakrishan",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Center(
          child: Text(
            "Musify.",
            style: TextStyle(color: Colors.pink[200],
                fontSize: 28, fontWeight: FontWeight.bold),
          ),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              "Suggested playlists",
              style: TextStyle(color: Colors.pink[200],
                  fontSize: 18, fontWeight: FontWeight.w600),
            ),
          ),
          Row(
            children: [
              
              Image.asset(
                "assets/music/katt.jpg",
                width: 250,
                height: 180,
              ),
              SizedBox(width: 20,),
              Image.asset(
                "assets/music/katt.jpg",
                 width: 200,
                height: 180,
              ),
            ],
          ),
          SizedBox(
            height: 6,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              "Recommended for you",
              style: TextStyle(color: Colors.pink[200], fontSize: 18, fontWeight: FontWeight.w600),
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: title.length,
              itemBuilder: (context, index) => Card(
                child: ListTile(
                  tileColor: Colors.black,
                  leading: Image.asset(images[index]),
                  title: Text(title[index],
                      style: TextStyle(color: Colors.pink[200])),
                  subtitle: Text(subtitle[index],
                      style: TextStyle(color: Colors.white)),
                  trailing: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Icon(Icons.star_border, color: Colors.pink[200]),
                      SizedBox(width: 8),
                      Icon(Icons.download_outlined, color: Colors.pink[200]),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );}}