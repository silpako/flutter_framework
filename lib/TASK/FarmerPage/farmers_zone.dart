import 'package:carousel_slider/carousel_options.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: FamFresh(),
  ));
}

class FamFresh extends StatefulWidget {
  const FamFresh({Key? key}) : super(key: key);

  @override
  State<FamFresh> createState() => _FamFreshState();
}

class _FamFreshState extends State<FamFresh> {
  var index = 0;
  List image = [
    "assets/books/veg.jpg",
    "assets/books/fruit.jpg",
    "assets/books/exotic.jpg",
    "assets/books/freshcut.jpg",
    "assets/books/nutritions.jpg",
    "assets/books/flavours.jpg",
  ];
  List name = [
    "Vegetables",
    "Fruits",
    "Exotic",
    "Fresh Cuts",
    "Nutrition Chargers",
    "Packed Flavors"
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 47, 160, 51),
        title: Text(
          "FARMER FRESH ZONE",
          style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
        ),
        actions: [
          Row(
            children: [
              Text("Kochi"),
              Icon(Icons.location_on_outlined),
              Icon(Icons.arrow_drop_down_sharp)
            ],
          ),
        ],
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
              height: 50,
              color: Color.fromARGB(255, 47, 160, 51),
              padding: EdgeInsets.all(10),
              child: TextFormField(
                  cursorColor: Colors.green[900],
                  decoration: InputDecoration(
                    contentPadding:
                        EdgeInsets.symmetric(vertical: 2.0, horizontal: 4.0),
                    hintText: 'Search for  vegetables,Fruits,....',hintStyle:TextStyle(color: Colors.grey) ,
                    fillColor: Colors.white,
                    filled: true,
                    prefixIcon: Visibility(
                      visible: true,
                      child: Icon(
                        Icons.search,
                        color: Colors.grey,
                      ),
                    ),
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                        borderSide: BorderSide(
                            color: Colors.grey.shade200, width: 1.5)),
                  )),
            ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color.fromARGB(255, 195, 255, 197),
                      shadowColor: Colors.green[300],
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                      fixedSize: Size(110, 35),
                    ),
                    onPressed: () {},
                    child: Text(
                      "VEGETABLES",
                      style: TextStyle(
                        color: Color.fromARGB(255, 3, 139, 8),
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color.fromARGB(255, 195, 255, 197),
                      shadowColor: Colors.green[300],
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                      fixedSize: Size(110, 35),
                    ),
                    onPressed: () {},
                    child: Text(
                      "FRUITS",
                      style: TextStyle(
                        color: Color.fromARGB(255, 3, 139, 8),
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color.fromARGB(255, 195, 255, 197),
                      shadowColor: Colors.green[300],
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                      fixedSize: Size(110, 35),
                    ),
                    onPressed: () {},
                    child: Text(
                      "EXOTIC",
                      style: TextStyle(
                        color: Color.fromARGB(255, 3, 139, 8),
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color.fromARGB(255, 195, 255, 197),
                      shadowColor: Colors.green[300],
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                      fixedSize: Size(110, 35),
                    ),
                    onPressed: () {},
                    child: Text(
                      "FRESH CUTS",
                      style: TextStyle(
                        color: Color.fromARGB(255, 3, 139, 8),
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 10,
              ),
              CarouselSlider(
                options: CarouselOptions(
                  height: 200.0,
                  enlargeCenterPage: true,
                  autoPlay: true,
                  aspectRatio: 16 / 9,
                  autoPlayCurve: Curves.fastOutSlowIn,
                  enableInfiniteScroll: true,
                  autoPlayAnimationDuration: Duration(milliseconds: 700),
                  viewportFraction: 0.8,
                ),
                items: [
                  Container(
                    margin: EdgeInsets.all(5.0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8.0),
                      image: DecorationImage(
                        image: AssetImage('assets/books/screenfam.jpg'),
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.all(5.0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8.0),
                      image: DecorationImage(
                        image: AssetImage('assets/books/screenfruit.jpg'),
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.all(5.0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8.0),
                      image: DecorationImage(
                        image: AssetImage('assets/books/screennutri.jpg'),
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.all(5.0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8.0),
                      image: DecorationImage(
                        image: AssetImage('assets/books/screenfruitscut.jpg'),
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 10),
              Card(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                      children: [
                        IconButton(
                          onPressed: () {},
                          icon: FaIcon(
                            Icons.access_alarm,
                            color: Colors.green[800],
                            size: 30,
                          ),
                        ),
                        Text(
                          "30 MINS POLICY",
                          style: TextStyle(fontSize: 10),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        IconButton(
                          onPressed: () {},
                          icon: FaIcon(
                            FontAwesomeIcons.mobileScreen,
                            color: Colors.green[800],
                            size: 30,
                          ),
                        ),
                        Text(
                          "TRACEABILITY",
                          style: TextStyle(fontSize: 10),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        IconButton(
                          onPressed: () {},
                          icon: FaIcon(
                            FontAwesomeIcons.person,
                            color: Colors.green[800],
                            size: 30,
                          ),
                        ),
                        Text(
                          "LOCAL SOURCING",
                          style: TextStyle(fontSize: 10),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              GridView.builder(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                ),
                itemBuilder: (context, index) => Container(
                  height: 30,
                  child: Column(
                    children: [
                      Image.asset(image[index],height: 100,width: 100,),
                      Text(name[index]),
                    ],
                  ),
                ),
                itemCount: name.length,
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        onTap: (tapIndex) {
          setState(() {
            index = tapIndex;
          });
        },
        type: BottomNavigationBarType.shifting,
        selectedItemColor: Color.fromARGB(255, 3, 139, 8),
        backgroundColor: Colors.grey,
        currentIndex: index,
        items: [
          BottomNavigationBarItem(
            backgroundColor: Colors.white,
            icon: Icon(
              Icons.home,
              size: 30,
              color: Colors.grey,
            ),
            label: "HOME",
          ),
          BottomNavigationBarItem(
            backgroundColor: Colors.white,
            icon: Icon(
              Icons.shopping_cart,
              size: 30,
              color: Colors.grey,
            ),
            label: "CART",
          ),
          BottomNavigationBarItem(
            backgroundColor: Colors.white,
            icon: Icon(
              Icons.person_2_outlined,
              size: 30,
              color: Colors.grey,
            ),
            label: "ACCOUNT",
          ),
        ],
      ),
    );
  }
}