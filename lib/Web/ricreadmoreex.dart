import 'package:flutter/material.dart';
import 'package:rich_readmore/rich_readmore.dart';
void main()
{
  runApp(MaterialApp(home: ReadMoreLess(),));
}

class ReadMoreLess extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold
    (
      appBar: AppBar(title: Text("ReadMoreLess"),),
      backgroundColor: Colors.blueAccent,
      body: Column
      (
        children: [
          RichReadMoreText.fromString(
          text: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit.',
          textStyle: TextStyle(color: Colors.purpleAccent),
          settings: LengthModeSettings(
          trimLength: 20,
          trimCollapsedText: 'Expand',
          trimExpandedText: ' Collapse ',
          onPressReadMore: () {
       /// specific method to be called on press to show more
        },
          onPressReadLess: () {
       /// specific method to be called on press to show less
        },
        lessStyle: TextStyle(color: Colors.blue),
        moreStyle: TextStyle(color: Colors.blue),
   ),
 ),
        ],

      ),

    );
  }

}