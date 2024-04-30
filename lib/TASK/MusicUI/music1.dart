import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Grid_Music1(),
  ));
}

// ignore: must_be_immutable
class Grid_Music1 extends StatelessWidget {

  var gridIcons = [
    "assets/music/chandhpott.jpg",
    "assets/music/chandrolsavm.jpg",
    "assets/music/chithram.jpg",
    "assets/music/kaliyattam.jpg",
    "assets/music/katt.jpg",
    "assets/music/thoovanathumbikal.jpg",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Center(
          child: Text(
            "Playlists",
            style: TextStyle(color: Colors.pink[200]),
          ),
        ),
      ),
        body:
          Column(
            children: [
              Container(
                height: 45,
                margin: EdgeInsets.all(8),
                padding: EdgeInsets.symmetric(horizontal:18),
                decoration: BoxDecoration(
                  color: Colors.grey[850],
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Search...",
                      style: TextStyle(color: Colors.pink[200]),
                    ),
                    Icon(Icons.search, color: Colors.pink[200],)
                  ],
                ),
              ),
              SizedBox(height: 8,),
              Expanded(
                child: GridView.builder(
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                  ),
                  itemCount: gridIcons.length,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: EdgeInsets.all(6),
                      child: Container(
                        height: 50,
                        width: 50,

                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image:AssetImage(gridIcons[index]),
                            fit: BoxFit.fill,

                          ),
                          borderRadius: BorderRadius.circular(50.0),
                        ),),
                    );
                  },
                ),
              ),
            ],
          )
);
  }
}