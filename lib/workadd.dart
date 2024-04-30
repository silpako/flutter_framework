import 'package:flutter/material.dart';

void main()
{
  runApp(
    MaterialApp(home: FirstProgram(),
    ));
}
class FirstProgram extends StatelessWidget
{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:Text("First program",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),)),
        body: Center(
          child:Column(mainAxisAlignment: MainAxisAlignment.center,
          children: [
          Image.network('https://images.unsplash.com/photo-1700609433663-11de01fe53a8?w=600&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHx0b3BpYy1mZWVkfDEzfEpwZzZLaWRsLUhrfHxlbnwwfHx8fHw%3D'),
          Text("My Application"),
          ],
       
        ),
      ),
    );
  }

}