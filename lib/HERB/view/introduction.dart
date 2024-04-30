import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
class Intro_page extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(12, 170, 9, 1),
        title: Text('Introduction',style: GoogleFonts.sansita(),),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Introduction to Ayurvedic Herbs',
              style: GoogleFonts.sansita(
                fontSize: 15,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 16),
            Text(
              'Ayurveda, the ancient Indian system of medicine, has long relied on the use of herbs to promote health and treat various ailments. Ayurvedic herbs are derived from plants, roots, leaves, flowers, and other natural sources, each possessing unique medicinal properties.These herbs are an integral part of Ayurvedic practice, which emphasizes the balance of mind, body, and spirit for overall well-being. In Ayurveda, herbs are often prescribed in combination with other holistic therapies such as yoga, meditation, and dietary adjustments to address specific health concerns.',
              style: GoogleFonts.sansita(
                fontSize: 13,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
