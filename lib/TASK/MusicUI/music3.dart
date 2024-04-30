import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: MusicPlayScreen(),
  ));
}

class MusicPlayScreen extends StatefulWidget {
  @override
  State<MusicPlayScreen> createState() => _MusicPlayScreenState();
}

class _MusicPlayScreenState extends State<MusicPlayScreen> {
  double _currentSliderValue = 3;
  double _totalDuration = 201;
  String _formatDuration(double seconds) {
    Duration duration = Duration(seconds: seconds.toInt());
    String formattedDuration = duration.toString().split('.').first;
    return formattedDuration.substring(2);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Center(
            child: Text(
          'Now Playing',
          style: TextStyle(color: Colors.pink[200]),
        )),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 200,
              width: 200,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15.0),
                image: DecorationImage(
                  image: AssetImage('assets/music/music.jpeg'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            SizedBox(height: 20.0),
            Text(
              'Flowers',
              style: TextStyle(
                  fontSize: 24.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.pink[200]),
            ),
            SizedBox(height: 8.0),
            Text(
              'Miley Cyrus',
              style: TextStyle(fontSize: 14.0, color: Colors.white),
            ),
            SizedBox(height: 10,),
            Slider(
              value: _currentSliderValue,
              min: 0,
              max: _totalDuration,
              onChanged: (value) {
                setState(() {
                  _currentSliderValue = value;
                });
              },
              activeColor: Colors.pink[200],
              inactiveColor: Colors.grey,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    _formatDuration(_currentSliderValue),
                    style: TextStyle(color: Colors.white),
                  ),
                  Text(
                    _formatDuration(_totalDuration),
                    style: TextStyle(color: Colors.white),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 5),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Column(
                    children: [
                      IconButton(
                        icon: Icon(CupertinoIcons.arrow_down_to_line_alt,),
                        onPressed: () {},
                        color: Colors.pink[200],
                        iconSize: 20,
                      ),
                      IconButton(
                        icon: Icon(FontAwesomeIcons.volumeMute),
                        onPressed: () {},
                        color: Colors.white,
                        iconSize: 15,
                      ),
                    ],
                  ),
                  SizedBox(width: 35,),
                  Row(
                    children: [
                      IconButton(
                        icon: Icon(FontAwesomeIcons.random),
                        onPressed: () {},
                        color: Colors.white,
                        iconSize: 20,
                      ),
                      IconButton(
                        icon: Icon(Icons.skip_previous),
                        onPressed: () {},
                        color: Colors.grey,
                        iconSize: 37,
                      ),
                      IconButton(
                        icon: Icon(Icons.pause_circle),
                        onPressed: () {},
                        color: Colors.pink[200],
                        iconSize: 60,
                      ),
                      IconButton(
                        icon: Icon(Icons.skip_next),
                        onPressed: () {},
                        color: Colors.grey,
                        iconSize: 37,
                        ),
                      IconButton(
                        icon: Icon(FontAwesomeIcons.repeat),
                        onPressed: () {},
                        color: Colors.white,
                        iconSize: 20,
                      ),
                    ],
                  ),
                   SizedBox(width: 35,),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      IconButton(
                        icon: Icon(FontAwesomeIcons.star),
                        onPressed: () {},
                        color: Colors.white,
                        iconSize: 16,
                      ),
                      IconButton(
                        icon: Icon(CupertinoIcons.double_music_note,),
                        onPressed: () {},
                        color: Colors.white,
                        iconSize: 19,
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(height: 15,),
            Row( 
              mainAxisAlignment: MainAxisAlignment.center,
              children: 
              [
                Text("Playlist  ",style: TextStyle(color: Colors.pink[200],fontSize: 10),),
                Text("|",style: TextStyle(color: Colors.white,fontSize: 10),),
                Text("  Lyrics",style: TextStyle(color: Colors.pink[200],fontSize: 10),),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
