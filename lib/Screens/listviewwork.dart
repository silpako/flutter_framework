import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp( debugShowCheckedModeBanner: false,
    home:ListView6()));
}

// ignore: must_be_immutable
class ListView6 extends StatelessWidget{
 
 var month=["January","February","March","April","May","June","July","August","September","November","December"];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Month 2023"),),
      body: ListView.separated(itemBuilder: (context,index)
      {
        return Card
        (color: Colors.grey,
          child: Text(month[index])
        );

      },
      separatorBuilder: (context,index){
        if(index%4==0)
        {
        return Card(color: Colors.red,
        child:Text("Advertisement"),);}
        return SizedBox(height: 5,);
        }, 
        itemCount:month.length)
    );          
  }
}