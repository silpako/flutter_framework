import 'package:flutter/material.dart';
import 'package:flutter_october_vs/HERB/view/alldisease.dart';
import 'package:flutter_october_vs/HERB/view/ayurvedic.dart';
import 'package:flutter_october_vs/HERB/view/bodym.dart';
import 'package:flutter_october_vs/HERB/view/introduction.dart';
import 'package:flutter_october_vs/HERB/view/beauti.dart';
import 'package:flutter_october_vs/HERB/view/meditation.dart';
import 'package:google_fonts/google_fonts.dart';
// ignore: must_be_immutable
class CategoryHerb extends StatelessWidget {
  var data = [
    {"image": "assets/herbs/introd.png", "text": "Introduction"},
    {"image": "assets/herbs/leaf.png", "text": "Ayurvedic Herbs"},
    {"image": "assets/herbs/disease.jpg", "text": "All Diseases"},
    {"image": "assets/herbs/beauti.jpg", "text": "Beauti Tips"},
    {"image": "assets/herbs/yoga.jpg", "text": "Meditation"},
    {"image": "assets/herbs/bm.jpg", "text": "Body Massage"},
  ];

  final Map<String, WidgetBuilder> routes = {
    "Introduction": (context) => Intro_page(),
    "Ayurvedic Herbs": (context) => Ayurvedic_Herb(),
    "All Diseases": (context) => Disease_Page(),
    "Beauti Tips": (context) => Beautitips_herb(),
    "Meditation":(context) => Meditation(),
    "Body Massage":(context) => Body_Page(),
  };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(12, 170, 9, 1),
        title: Text(
          "Category",
          style: GoogleFonts.sansita(color: Colors.white),
        ),
        actions: [
          SizedBox(width: 15),
          Container(
            width: 30, // Set your desired width
            height: 30, // Set your desired height
            child: PopupMenuButton(
              itemBuilder: (context) {
                return [
                  const PopupMenuItem(child: Text("Profile", style: TextStyle(fontSize: 15))),
                  const PopupMenuItem(child: Text("Privacy", style: TextStyle(fontSize: 15))),
                  const PopupMenuItem(child: Text("Contact Us", style: TextStyle(fontSize: 15))),
                  const PopupMenuItem(child: Text("Rate Us", style: TextStyle(fontSize: 15))),
                  const PopupMenuItem(child: Text("Disclaimer", style: TextStyle(fontSize: 15))),
                ];
              },
            ),
          ),
        ],
      ),
      body: Column(
        children: [
          Container(
            height: 30,
            margin: EdgeInsets.all(8),
            padding: EdgeInsets.symmetric(horizontal: 18),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Search...",
                  style: GoogleFonts.sansita(color: Colors.grey, fontSize: 15),
                ),
                Icon(Icons.search, color: Colors.grey, size: 15)
              ],
            ),
          ),
          SizedBox(height: 8),
          Expanded(
            child: GridView.builder(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
              ),
              itemCount: data.length,
              itemBuilder: (context, index) {
                return GestureDetector(
                  onTap: () {
                    String text = data[index]["text"]!;
                    if (routes.containsKey(text)) {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: routes[text]!),
                      );
                    }
                  },
                  child: Padding(
                    padding: EdgeInsets.all(6),
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(8),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.5),
                            spreadRadius: 2,
                            blurRadius: 3,
                            offset: Offset(0, 2),
                          ),
                        ],
                      ),
                      child: Column(
                        children: [
                          Expanded(
                            child: Container(
                              width: double.infinity,
                              height: 5,
                              child: ClipRRect(
                                borderRadius: BorderRadius.vertical(top: Radius.circular(6)),
                                child: data[index]["image"] != ""
                                    ? Image.asset(
                                        data[index]["image"]!,
                                        fit: BoxFit.cover,
                                        width: double.infinity, // specify your desired width
                                        height: double.infinity, // specify your desired height
                                      )
                                    : Container(color: Colors.grey), // Placeholder if image is empty
                              ),
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.all(8),
                            alignment: Alignment.center,
                            child: Text(
                              data[index]["text"]!,
                              style: GoogleFonts.sansita(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 15,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}

class IntroductionPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Introduction"),
      ),
      body: Center(
        child: Text(
          "This is the Introduction Page",
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}

class AyurvedicHerbsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Ayurvedic Herbs"),
      ),
      body: Center(
        child: Text(
          "This is the Ayurvedic Herbs Page",
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}

class AllDiseasesPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("All Diseases"),
      ),
      body: Center(
        child: Text(
          "This is the All Diseases Page",
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}

class LifestylePracticesPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Lifestyle Practices"),
      ),
      body: Center(
        child: Text(
          "This is the Lifestyle Practices Page",
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}

class MeditationPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Meditation"),
      ),
      body: Center(
        child: Text(
          "This is the Meditation Page",
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}

class BodyMassagePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Body Massage"),
      ),
      body: Center(
        child: Text(
          "This is the Body Massage Page",
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}
