import 'package:flutter/material.dart';
void main()
{
  runApp(MaterialApp(home: BottomSheetEx(),));
}

class BottomSheetEx extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
   return Scaffold(
    appBar: AppBar(title: Text("Bottom Sheet"),),
    body: Center(
      child: GestureDetector(
        onTap: () {
          showSheet(context);
        },
        child: Image.network("https://images.unsplash.com/photo-1532012197267-da84d127e765?w=600&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8Ym9va3xlbnwwfHwwfHx8MA%3D%3D")
      ),
    ),
   );
  }

}
void showSheet(BuildContext context){
  showModalBottomSheet(
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
    
    context: context, builder: (context)=> Column(
            children: [
              ListTile(
                leading: Icon(Icons.share),
                trailing: Text("Share"),
              ),
              ListTile(
                leading: Icon(Icons.copy),
                trailing: Text("Copy"),)

            ],
          ),
          );
}