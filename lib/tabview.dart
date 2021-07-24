import 'package:e_commerce_app/productlist.dart';
import 'package:e_commerce_app/widget/slidable_wodget.dart';
import 'package:flutter/material.dart';




class Tabview extends StatelessWidget {
  const Tabview({
    Key key,
  }) : super(key: key);
  

  @override
  Widget build(BuildContext context) {
   
    return DefaultTabController(
      
      
      length: 4, // length of tabs
      initialIndex: 0,
      child: SingleChildScrollView(
              child: Column(crossAxisAlignment: CrossAxisAlignment.stretch, children: <Widget>[
          Container(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: TabBar(
                
                
                
                labelColor: Colors.white,
                unselectedLabelColor: Colors.white,
                indicator: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.black,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.3),
                        blurRadius: 25,
                        offset: Offset(0, 10), // changes position of shadow
                      ),
                    ],
                  ),
                
                tabs: [
                  Tab(
                    text: 'Nike', ),
                    
                  Tab(text: 'Adidas'),
                  Tab(text: 'Puma'),
                  Tab(text: 'All'),
                ],
                
              ),
            ),
          ),
          Container(
            height: MediaQuery.of(context).size.height- 0.8,
            
            //width: 400, //height of TabBarView

           
            
            child: TabBarView(children: <Widget>[
              ProductList(),
              Container(
                child: Center(
                  child: Text('Display Tab 2', style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold,color: Colors.white)),
                ),
              ),
              Container(
                child: Center(
                  child: Text('Display Tab 3', style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold,color: Colors.white)),
                ),
              ),
              Container(
                child: Center(
                  child: Text('Display Tab 4', style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold, color: Colors.white)),
                ),
              ),
            ])
          )
        ]),
      )
    );
  }
  
}