import 'package:flutter/material.dart';
import 'package:flutter_october_vs/Refractoring/widget/mywidget.dart';
void main(){

  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: RefactoringHome(),));
}
class RefactoringHome extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold
    (
      appBar: AppBar(title: Text("Refactoring Widget"),backgroundColor: Colors.red,),
      body: GridView.builder(
        itemCount: 5,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2), 
        itemBuilder:(context,index)=>
        ProductWidget(
          bgcolor: Colors.black,
          onClick: (){},
          myImage: AssetImage("assets/images/apple.jpeg"), 
          name: "Apple", 
          price: "\$200/kg") ),
    );
  }

}