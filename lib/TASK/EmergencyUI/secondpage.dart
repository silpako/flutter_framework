import 'package:circular_countdown_timer/circular_countdown_timer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_october_vs/TASK/EmergencyUI/lastpage.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class EmTimer extends StatefulWidget {
  const EmTimer({Key? key}) : super(key: key);

  @override
  State<EmTimer> createState() => _EmTimerState();
}

class _EmTimerState extends State<EmTimer> {
  var min;
  @override
Widget build(BuildContext context) {
  return Scaffold(
    backgroundColor: Colors.white,
    body: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "WE'RE SENDING",
            style: GoogleFonts.kanit(
              fontSize: 26,
              fontWeight: FontWeight.w500,
              color: Colors.black,
            ),
          ),
          Text(
            "EMERGENCY SUPPORT",
            style: GoogleFonts.kanit(
              fontSize: 26,
              fontWeight: FontWeight.w500,
              color: Colors.black,
            ),
          ),
          SizedBox(height: 20),
          Text(
            "Don't worry our support team will contact you in next...",
            style: GoogleFonts.kanit(
              fontSize: 14,
              fontWeight: FontWeight.normal,
              color: Colors.grey,
            ),
            textAlign: TextAlign.center,
          ),
          SizedBox(height: 40),
          CircularCountDownTimer(
            duration: 40,
            width: 150,
            height: 150,
            strokeWidth: 4.0,
            fillColor: Colors.red,
            ringColor: Colors.transparent,
            textStyle: TextStyle(
              fontSize: 40.0,
              color: Colors.red[600],
              fontWeight: FontWeight.bold,
            ),
            textFormat: CountdownTextFormat.MM_SS,
            isReverse: true,
            isReverseAnimation: true,
            onComplete: () {
              setState(() {
                // Handle timer completion if needed
                print('00:00');
              });
            },
          ),
          SizedBox(height: 20),
          Card(
            elevation: 3,
            margin: EdgeInsets.symmetric(horizontal: 20),
            child: ListTile(
              title: Text("Emergency Contact",style: TextStyle(fontWeight: FontWeight.bold),),
              subtitle: Text("408-747-7238"),
               trailing: CircleAvatar(child: Icon(Icons.phone_in_talk,color: Colors.white,),backgroundColor: Colors.green[400],),
              onTap: () {},
            ),
          ),
          Card(
            elevation: 3,
            margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: ListTile(
              title: Text("Emergency Contact",style: TextStyle(fontWeight: FontWeight.bold,),),
              subtitle: Text("408-747-7238"),
              trailing: CircleAvatar(child: Icon(Icons.phone_in_talk,color: Colors.white,),backgroundColor: Colors.green[400],),
              onTap: () {},
            ),
          ),
        ],
      ),
    ),
    floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    floatingActionButton: FloatingActionButton(
      onPressed: () {},
      child: Icon(FontAwesomeIcons.asterisk,
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
            onPressed: () {
               Navigator.of(context).push(MaterialPageRoute(builder: (context)=>EmergencyLast()));
            },
          ),
        ],
      ),
    ),
  );
}


}