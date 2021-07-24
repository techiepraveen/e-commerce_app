import 'package:e_commerce_app/widget/buildlisttile.dart';
//import 'package:e_commerce_app/widget/dismissitem.dart';
import 'package:e_commerce_app/widget/productdetailspage.dart';
import 'package:e_commerce_app/widget/slidable_wodget.dart';

import 'package:flutter/material.dart';

import 'model/productclass.dart';
import 'model/products.dart';

class ProductList extends StatefulWidget {
  @override
  _ProductListState createState() => _ProductListState();
}

class _ProductListState extends State<ProductList> {
  List<Productclass> items = List.of(Products.details);
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        
      ),
      
      child: ListView.builder(
        
        
        itemCount: items.length,
        itemBuilder: (context, index) {
          final item = items[index];
          return SlidableWidget(
              child: InkWell(
                onTap: (){
                  Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => ProductDetailsPage(item: item)));
                },
                child: buildListTile(item)),
                onDismissed: null,
            
            );
        },
      ),
    );
  }
}
