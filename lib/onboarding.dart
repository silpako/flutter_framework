import 'package:flutter/material.dart';
import 'package:flutter_october_vs/lanimation2.dart';
import 'package:flutter_october_vs/lottieanimation.dart';
import 'package:introduction_screen/introduction_screen.dart';
void main()
{
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: OnboardingEx(),));
}
class OnboardingEx extends StatelessWidget{
  
  @override
  Widget build(BuildContext context) {
    // ignore: unused_local_variable
    PageDecoration pageDecor= const PageDecoration
    (
      bodyTextStyle: TextStyle
      (
        fontSize: 30,
        fontStyle: FontStyle.italic,
        fontWeight: FontWeight.bold,
        color: Colors.red
      ),
      titlePadding: EdgeInsets.all(10),
      boxDecoration: BoxDecoration
      (
        gradient: LinearGradient
        (colors: 
          [
            Colors.purple,Colors.blue,Colors.black
          ],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight
        ),
        
      )


    );
   
   
    return IntroductionScreen(
      pages:
      [
        PageViewModel
        (
          titleWidget: Image.asset("assets/books/neermathalam.jpeg",) ,
          body: "NEERMATHALAM POOTHA KAALAM"
          // title: "NEERMATHALAM POOTHA KAALAM",
          // body: "It is a memoir by Madhavikkutty",
          // image: Image.asset("assets/books/neermathalam.jpeg",)
        ),
        PageViewModel
        (
           titleWidget: Image.asset("assets/books/premam.jpeg",) ,
          body: "PREMALEKHANAM"

          // title: "PREMALEKHANAM",
          // body: "Short endearing love story with some poignant moments ",
          // image: Image.asset("assets/books/premam.jpeg",)
        ),
        PageViewModel
        (
          titleWidget: Image.asset("assets/books/orikal.jpeg",),
          body: "ORIKKAL"
          // title: "ORIKKAL",
          // body: "Short autobiographical novel that tells a lovely  love story.",
          // image: Image.asset("assets/books/orikal.jpeg",)
        )
        ],
        next: Text("Next"),
        showSkipButton: true,
        skip: Text("Skip"),
        done: Text("Continue"),
        onDone: () => Navigator.of(context).push(MaterialPageRoute(builder: (context)=>LottieEx2(), )),
        
        onSkip: () => Navigator.of(context).push(MaterialPageRoute(builder: (context)=>LottieEx(),)),
        dotsDecorator: DotsDecorator(
          size: Size(10, 10),
          activeSize: Size(20, 10),
          color: Colors.black,
          activeColor: Colors.red,
          activeShape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50.0))

          ),

    );
  }

}