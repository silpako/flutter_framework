import 'dart:html';
import 'dart:io';
import 'dart:js_util';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:image_picker/image_picker.dart';
import 'package:path/path.dart' as path; // as used to type cast
void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: const FirebaseOptions(
      apiKey:"AIzaSyBy0hcKr34uNzpyWnDYPeG6NKAbCZtjBvg", 
      appId:"1:895846917302:android:a637e32ed7748591b2f217" , 
      messagingSenderId: "", 
      projectId: "mysignin-92bde",
      storageBucket: "mysignin-92bde.appspot.com")
  );
  runApp( MaterialApp(
    home: MediaStorage(),
  ));
}
class MediaStorage extends StatefulWidget{
  @override
  State<MediaStorage> createState() => _MediaStorageState();
}

class _MediaStorageState extends State<MediaStorage> {
  FirebaseStorage storage = FirebaseStorage.instance; // instance is used to " inside the class single object"
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Media Storage"),
      backgroundColor: Colors.deepPurple,
      actions: [
        IconButton(onPressed: () => upload("Camera"), 
        icon: Icon(Icons.camera,color: Colors.white,))
      ],),
      body: Padding(padding: 
      EdgeInsets.all(10),
      child: Column(
        children: [
          Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton.icon(
             onPressed: () => upload("Camera"),
             icon: Icon(Icons.camera), 
             label: Text("Camera")),

            ElevatedButton.icon(onPressed: () => upload("Gallery"),
             icon: Icon(Icons.photo), 
             label: Text("Galley")),


          ],
        ),
        Expanded(
          child: FutureBuilder(
          future:loadMedia() , 
          builder: (context,snapshot)
          {
            if(snapshot.connectionState == ConnectionState.done)
            {
              return ListView.builder(itemBuilder: (context,index)
              {
                final Map<String,dynamic> image=snapshot.data![index];

                return Card(
                  child: ListTile(
                    leading: Image.network([image:"imageUrl"]),
                    title: Text([image:"credit"]),
                    subtitle: Text([image:"date"]),
                    
                  ),
                );
              });
            }
          }))
        ],
      ),),
    );
  }
  
  Future<void> upload(String imgSource) async{
    final picker= ImagePicker();    // object of iamge picker ?-null aware
    XFile? pickedImage;       // to store image
    try{
      pickedImage = await picker.pickImage(source: imgSource == "Camera"
      ? ImageSource.camera
      : ImageSource.gallery);
      final String fileName = path.basename(pickedImage!.path);
      File imageFile =  File(pickedImage.path);   // setting path from ur phone
      try{
        await storage.ref(fileName).putFile(imageFile);
        imageFile;
        SettableMetadata(
          customMetadata: {
            "pic_credit": "Someone",
            "date":"05/02/2024",
        });
        setState(() {});
      }
      on FirebaseException catch(e)
      {
        print(e);
      }

    }catch(error)
    {
      print(error);
    }
  }
  
  Future<List<Map<String, dynamic>>> loadMedia() async {
    List<Map<String, dynamic>> images=[];
    final ListResult result = await storage.ref().list();
    final List<Reference> allfiles = result.items;

    await Future.forEach(allfiles, (singleFile).async{
      final String fileUrl= await singleFile.getDownloadURL();
      final FullMetadata Metadata = await singleFile.getMetadata();

      image.add({
        "imageurl" : fileUrl,
        "path" : singleFile.fullpath;
        "credit" : metadata.customMetadata?["pic_credit"]?? "NO DATA",
        "date" :  metadata.customMetadata?["pic_credit"]?? "NO DATA",

      },);

    });

  }
}