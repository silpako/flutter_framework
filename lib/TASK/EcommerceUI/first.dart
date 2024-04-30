import 'package:flutter/material.dart';

import 'Running.dart';
import 'all.dart';
import 'details.dart';
import 'jordan.dart';
import 'life style.dart';
void main(){
  runApp(MaterialApp(debugShowCheckedModeBanner: false,
    routes: {"detailpage":(context)=> DetailsPageEcmrce()},
  home: First_page(),));
}

class First_page extends StatefulWidget {


  @override
  State<First_page> createState() => _First_pageState();
}

class _First_pageState extends State<First_page>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 4, vsync: this);
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
        centerTitle: true,
          title: Text(
            " All shoes",
            style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),
          ),
          actions: [

            IconButton(onPressed: () {}, icon: Icon(Icons.search,color: Colors.white,)),

          ],
          bottom: TabBar(indicatorColor: Colors.black,
            unselectedLabelColor: Colors.black,
            labelColor: Colors.black,
            controller: _tabController,
            tabs: [

              Tab(text: 'All',),
              Tab(text: 'Life Style'),
              Tab(text: 'Jordan'),
              Tab(text: 'Running'),
            ],
          ),
        ),
        body: TabBarView(
          controller: _tabController,
          children: [
            All_shoes(),
            Life_style(),
            Jordan(),
            Running(),
          ],
        ),



    );
  }
}
