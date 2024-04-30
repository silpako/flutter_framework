import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: CheckOut_ex(),
  ));
}

class CheckOut_ex extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Padding(
            padding: const EdgeInsets.all(8),
            child: Icon(
              Icons.arrow_forward_ios_sharp,
              color: Colors.black,
            )),
        centerTitle: true,
        title: Text(
          "Check Out",
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            SizedBox(
              height: 10,
            ),
            Stack(
              children: [
                Container(
                  width: double.infinity,
                  height: 70,
                ),
                Positioned(
                    left: 5,
                    child: Text(
                      "Delivery Address",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 18,
                          fontWeight: FontWeight.bold),
                    )),
                Positioned(
                    top: 20,
                    left: 5,
                    child: Text(
                      "san francisco,94910 ",
                      style: TextStyle(color: Colors.grey, fontSize: 16),
                    )),
                Positioned(
                    top: 40,
                    left: 5,
                    child: Text(
                      "750 shutter street",
                      style: TextStyle(color: Colors.grey, fontSize: 16),
                    )),
                Positioned(
                    top: 25,
                    left: 370,
                    child: Icon(
                      Icons.arrow_forward_ios_sharp,
                      size: 25,
                    ))
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Stack(
              children: [
                Container(
                  width: double.infinity,
                  height: 70,
                ),
                Positioned(
                    left: 5,
                    child: Text(
                      "Delivery Method",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 18,
                          fontWeight: FontWeight.bold),
                    )),
                Positioned(
                    top: 20,
                    left: 5,
                    child: Text(
                      "2 pieces",
                      style: TextStyle(color: Colors.grey, fontSize: 16),
                    )),
                Positioned(
                    top: 40,
                    left: 5,
                    child: Text(
                      "Free delivery",
                      style: TextStyle(color: Colors.grey, fontSize: 16),
                    )),
                Positioned(
                    top: 25,
                    left: 370,
                    child: Icon(
                      Icons.arrow_forward_ios_sharp,
                      size: 25,
                    ))
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Stack(
              children: [
                Container(
                  width: double.infinity,
                  height: 70,
                ),
                Positioned(
                    left: 5,
                    child: Text(
                      "Payment",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 18,
                          fontWeight: FontWeight.bold),
                    )),
                Positioned(
                    top: 20,
                    left: 5,
                    child: Text(
                      "511 Grant Avenue, Flat 23B,san francisco",
                      style: TextStyle(color: Colors.grey, fontSize: 16),
                    )),
                Positioned(
                    top: 40,
                    left: 5,
                    child: Text(
                      "Visa (****2319)",
                      style: TextStyle(color: Colors.grey, fontSize: 16),
                    )),
                Positioned(
                    top: 25,
                    left: 370,
                    child: Icon(
                      Icons.arrow_forward_ios_sharp,
                      size: 25,
                    ))
              ],
            ),
            SizedBox(
              height: 15,
            ),
            TextField(
              decoration: InputDecoration(
                  suffixIcon: Icon(Icons.done),
                  hintText: "Promo Code",
                  border: OutlineInputBorder()),
            ),
            SizedBox(
              height: 15,
            ),
            ListTile(
              leading: Text(
                'Subtotal',
                style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                    color: Colors.grey),
              ),
              trailing: Text(
                "857",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
              ),
            ),
            ListTile(
              leading: Text(
                'Delivery',
                style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                    color: Colors.grey),
              ),
              trailing: Text(
                "0",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
              ),
            ),
            ListTile(
              leading: Text(
                'Taxes',
                style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                    color: Colors.grey),
              ),
              trailing: Text(
                "73.92",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
              ),
            ),
            ListTile(
              leading: Text(
                'Total',
                style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                    color: Colors.grey),
              ),
              trailing: Text(
                "930.92",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 125),
              child: Container(
                height: 40,
                width: 350,
                child: ElevatedButton(
                    style: ButtonStyle(
                        backgroundColor:
                            MaterialStatePropertyAll(Colors.black)),
                    onPressed: () {},
                    child: Text(
                      'Place Order',
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    )),
              ),
            )
          ],
        ),
      ),
    );
  }
}
