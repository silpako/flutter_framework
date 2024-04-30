import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: ShoppingBag(),
  ));
}

class ShoppingBag extends StatefulWidget {
  @override
  State<ShoppingBag> createState() => _ShoppingBagState();
}

class _ShoppingBagState extends State<ShoppingBag> {
  int _counter = 0;

  void _increment() {
    setState(() {
      _counter++;
    });
  }

  void _decrement() {
    setState(() {
      if (_counter > 0) {
        _counter--;
      }
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Padding(
            padding: const EdgeInsets.all(8),
            child: Icon(
              Icons.close,
              color: Colors.black,
            )),
        centerTitle: true,
        title: Text(
          "Shopping Bag",
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        ),
      ),
      body: Column(
        children: [
          Container(
            width: double.infinity,
            height: 150,
            child: Card(
              child: Row(
                children: [
                  Container(
                    height: 150,
                    width: 150,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                          image: NetworkImage(
                              "https://media.istockphoto.com/id/695474472/photo/overhead-shot-of-white-sneakers-on-pink-background.webp?b=1&s=170667a&w=0&k=20&c=mqcgzSpqn_iPf1SkQiqfhfw5kSLNTRr0EgmvuV9o2BE="),
                          fit: BoxFit.cover,
                        ),
                        borderRadius: BorderRadius.circular(30)),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Column(
                    children: [
                      Text(
                        "Air Force 10'7",
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            ),
                      ),
                      Text(
                        "Size : 8",
                        style: TextStyle(color: Colors.grey, ),
                      ),
                      Text(
                        "  150 ",
                        style: TextStyle(color: Colors.grey, ),
                      ),
                    ],
                  ),
                  MaterialButton(onPressed: (){},
                    child: Text("+"),),


                ],

              ),
            ),
          )
        ],
      ),
    );
  }
}
