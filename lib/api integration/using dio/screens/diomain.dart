import 'package:flutter/material.dart';
import 'package:flutter_october_vs/api%20integration/using%20dio/controller/datacontroller.dart';
import 'package:flutter_october_vs/api%20integration/using%20dio/utils/colors.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';

void main()
{
  runApp(GetMaterialApp(home: DioHome(),));
}
class DioHome extends StatelessWidget{
  DataController  controller = Get.put(DataController());
  @override
  Widget build(BuildContext context) {
   return Scaffold(
    appBar: AppBar(
      title: Text("Dio Home"),
      backgroundColor: MyColors.priColor,
    ),
    backgroundColor: MyColors.bgColor,
    floatingActionButton: Obx(() => controller.isNetConnected.value? 
    buildFAB():Container()),
   );
  }
  
  FloatingActionButton buildFAB() {
    return FloatingActionButton(onPressed: (){
      controller.isListDown.value
      ? controller.scrollToUp()
      : controller.scrollToDown();
      },
      child: FaIcon(controller.isListDown.value
      ? FontAwesomeIcons.arrowUp19
      : FontAwesomeIcons.arrowDown19),
      );
  }

}