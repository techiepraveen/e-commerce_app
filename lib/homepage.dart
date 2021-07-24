
import 'package:e_commerce_app/tabview.dart';

import 'package:flutter/material.dart';



class Homepage extends StatefulWidget {
  @override
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  get child => null;
  int index = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.deepPurple,
        appBar: AppBar(
          iconTheme: IconThemeData(color: Colors.white),
          backgroundColor: Colors.deepPurple,
          leading: Icon(Icons.menu_sharp),

          // backgroundColor: Colors.white,
          elevation: 0,
          actions: [
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Icon(
                Icons.search,
                color: Colors.white,
                size: 30,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Icon(
                Icons.shopping_cart,
                color: Colors.white,
                size: 30,
              ),
            ),
          ],
        ),
        bottomNavigationBar: ClipRRect(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(40.0), 
            topRight: Radius.circular(40.0),
            
          
           ),
           
           
                  child: BottomNavigationBar(
            backgroundColor: Colors.black,
            showSelectedLabels: false,
            showUnselectedLabels: false,
            
           /// currentIndex: index,
            //onTap: null,
            items:  <BottomNavigationBarItem>[
              BottomNavigationBarItem(icon: Icon(Icons.home,color: Colors.white,),
              title: Text("Home")),
              BottomNavigationBarItem(
                icon: Icon(Icons.chat,color: Colors.white),
                title: Text("Home"),
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.shopping_cart, color: Colors.white),
                title: Text("Home"),
              ),
              
            ],
          ),
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(18.0),
            child: Column(
              children: [
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text("Shoes for ",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 25,
                          color: Colors.white,
                          fontStyle: FontStyle.italic)),
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text("Unique Style",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 23,
                          color: Colors.white,
                          fontStyle: FontStyle.italic)),
                ),
                SizedBox(
                  height: 10,
                ),
                Align(
                    alignment: Alignment.centerLeft,
                    child: Text("We have a wide range of Shoes",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                            color: Colors.white,
                            fontStyle: FontStyle.italic))),
                SizedBox(
                  height: 20,
                ),
                Tabview(),
              ],
            ),
          ),
        ));
  }
}
