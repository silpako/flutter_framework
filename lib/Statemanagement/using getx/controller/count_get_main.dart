import 'package:flutter/material.dart';
import 'package:flutter_october_vs/Statemanagement/using%20getx/controller/countctrl.dart';
import 'package:get/get.dart';

void main() {
  runApp(MaterialApp(
    home: GetCountMain(),
  ));
}
class GetCountMain extends StatelessWidget {
  final CountCntrl countcontroller= Get.put(CountCntrl());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Getx Counter"),
      ),
      body:Center(child: Column(
        children: [
          Text("Counter Using Getx",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
          Obx(() => Text("Count =${countcontroller.count}")),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              InkWell(
                onTap: (){
                  countcontroller.increment();
                },
                child: CircleAvatar(
                  backgroundColor: Colors.green,
                  child: Icon(Icons.add),
                ),
              ),
              InkWell(
                onTap: (){
                  countcontroller.decrement();
                },
                child: CircleAvatar(
                  backgroundColor: Colors.green,
                  child: Icon(Icons.minimize_rounded),
                ),
              )
            ],
          )
        ],
      )),
    );
  }
}
