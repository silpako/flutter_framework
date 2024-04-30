import 'package:flutter/material.dart';

void main() 
{
  runApp(MaterialApp(debugShowCheckedModeBanner: false,home: CountInc(),));
}
class CountInc extends StatefulWidget
{
  const CountInc({super.key});
  @override
  State<CountInc> createState() => _CountIncState();
}
class _CountIncState extends State<CountInc> {
  int counter = 0;
  @override
  Widget build(BuildContext context)
  {
    return Scaffold
    (
      appBar: AppBar
      (
        title: Text("Counter Increment"),
      ),
      body: Center
      (
        child: Column
        (
          children: 
          [
            Center(child: Text("On tapped:$counter"))
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton
      (
        onPressed: () 
        {
          setState
          (() 
           {
            counter++;
           }
          );
        },
        child: Icon(Icons.add),
      ),
    );
  }
}