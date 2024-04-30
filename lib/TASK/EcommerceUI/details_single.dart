import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(debugShowCheckedModeBanner: false,
  home: Details_single(),));
}

class Details_single extends StatelessWidget {
  const Details_single({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.arrow_back,size: 30,color: Colors.black,),
        actions: [
          Icon(Icons.shopping_bag,size: 30,color: Colors.black,)
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 300,
              width: double.infinity,
              decoration: BoxDecoration(
                image: DecorationImage(image: NetworkImage("https://media.istockphoto.com/id/1488205790/photo/sneakers-isolated-on-white-background-modern-sports-urban-casual-shoe-cutout-side-view.webp?b=1&s=170667a&w=0&k=20&c=Q5ix1QGAwaRkwzmk679GDGuKBRzB3QKX4eDcJ3U6Dhs="),fit: BoxFit.cover)
              ),
            ),
            SizedBox(height: 10,),
            Padding(
              padding: const EdgeInsets.only(right: 290),
              child: Text("Nike Air Max 90",style: TextStyle(fontWeight: FontWeight.bold),),
            ),
            SizedBox(height: 10,),
            Padding(
              padding: const EdgeInsets.only(right: 370),
              child: Text("1200",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.grey),),
            ),
            SizedBox(height: 10,),

            Row(
              children: [
                CircleAvatar(backgroundColor: Colors.blue,radius: 30,),
                SizedBox(width: 10,),
                CircleAvatar(backgroundColor: Colors.black,radius: 30,),
                SizedBox(width: 10,),
                CircleAvatar(backgroundColor: Colors.red,radius: 30,),
              ],
            ),
            SizedBox(height: 10,),
            Row(
              children: [
                MaterialButton(onPressed: (){},
                  child: Text("5",style: TextStyle(color: Colors.black),),),
                SizedBox(width: 10,),
                MaterialButton(onPressed: (){},

                  child: Text("6",style: TextStyle(color: Colors.black),),),
                SizedBox(width: 10,),
                MaterialButton(onPressed: (){},

                  child: Text("7",style: TextStyle(color: Colors.black),),),
                SizedBox(width: 10,),
                MaterialButton(onPressed: (){},

                  child: Text("8",style: TextStyle(color: Colors.black),),),
              ],
            ),
            SizedBox(height: 10,),
            Stack(
              children: [
                Container(
                  width: double.infinity,
                  height: 70,
                ),
                Positioned(
                    left: 5,
                    child: Text(
                      "The details",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 18,
                          ),
                    )),
                Positioned(
                    top: 30,
                    left: 5,
                    child: Text(
                      "sbfkjanfkjdjkldsjikj sjnafjklvdjsp jfdnojsofusdkjdfs",
                      style: TextStyle(color: Colors.grey, fontSize: 16),
                    )),
                Positioned(
                    top: 50,
                    left: 5,
                    child: Text(
                      "750 shutter street",
                      style: TextStyle(color: Colors.grey, fontSize: 16),
                    )),
                Positioned(
                    top: 25,
                    left: 370,
                    child:
                    Icon(
                      Icons.arrow_drop_down_outlined,
                      size: 40,
                    ))
              ],
            ),
            SizedBox(height: 20,),
            ListTile(
              leading: Text(
                'Size and fit',
                style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                    color: Colors.black),
              ),
              trailing:  Icon(
                Icons.arrow_drop_down_outlined,
                size: 40,
              )
            ),
            SizedBox(height: 20,),
            ListTile(
                leading: Text(
                  'Composition and care',
                  style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                      color: Colors.black),
                ),
                trailing:  Icon(
                  Icons.arrow_drop_down_outlined,
                  size: 40,
                )
            ),
            SizedBox(height: 40,),
            Row(
              children: [
                MaterialButton(onPressed: (){},
                child: Text("Add to Bag",style: TextStyle(fontWeight: FontWeight.bold),),),
                SizedBox(width: 180,),
                MaterialButton(onPressed: (){},
                  color: Colors.black,
                  child: Text("Place Order",style: TextStyle(color: Colors.white),),),
              ],
            )
          ],
        ),
      ),
    );
  }
}
