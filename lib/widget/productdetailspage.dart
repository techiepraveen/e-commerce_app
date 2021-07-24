import 'package:e_commerce_app/model/productclass.dart';
import 'package:flutter/material.dart';

class ProductDetailsPage extends StatelessWidget {
  final Productclass item;
  const ProductDetailsPage({Key key, this.item}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.grey[350],
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
        elevation: 0,
        title: Text("Product Details"),
        leading: IconButton(icon: Icon(Icons.arrow_back_ios),onPressed: (){
          Navigator.pop(context);
        },),
        actions: [
          IconButton(onPressed: null, icon: Icon(Icons.search,color: Colors.white),),
          IconButton(onPressed: null, icon: Icon(Icons.shopping_cart,color: Colors.white,)),
          
        ],

      ),
      body: Stack(
        alignment: Alignment.topCenter,
        children: [
          Container(
            margin: EdgeInsets.only(top: size.height * 0.2),
            padding: EdgeInsets.only(top: size.height * 0.2),
            height: size.height * 0.8,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20),
                topRight: Radius.circular(20),
              ),
              color: Colors.deepPurple
            ),
            child: SingleChildScrollView(
              padding: EdgeInsets.all(8.0),
              child: SafeArea(
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    
                    children: [
                      SizedBox(height: 20,),
                      
                     Text(item.name,style: TextStyle(fontSize: 26,color: Colors.white,fontWeight: FontWeight.bold),),
                     Padding(
                       padding: const EdgeInsets.only(top:10,bottom: 10),
                       child: Text(item.title,style: TextStyle(fontSize: 16,color: Colors.white,fontWeight: FontWeight.bold)),
                     ),
                     Text(item.desc,style: TextStyle(fontSize: 16,color: Colors.white,fontWeight: FontWeight.bold)),
                     Padding(
                       padding: const EdgeInsets.only(top:8.0,bottom: 8.0),
                       child: Text("\$ "+item.price+ " .0",style: TextStyle(fontSize: 16,color: Colors.white,fontWeight: FontWeight.bold)),
                     ),
                     Text("asasasasasasas\nssasas\n",style: TextStyle(fontSize: 16,color: Colors.white,fontWeight: FontWeight.bold)),
                     SizedBox(height:10,),
                     Row(
                       
                         children: [
                          Container(
                             alignment: Alignment.center,
                             height: 40,
                             width: 40,
                             decoration: BoxDecoration(
                               borderRadius: BorderRadius.circular(5),
                               color: Colors.white
                             ),
                             child: Text("7",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
                           ),
                           Padding(
                             padding: const EdgeInsets.all(8.0),
                             child: Container(
                               alignment: Alignment.center,
                               height: 40,
                               width: 40,
                               decoration: BoxDecoration(
                                 borderRadius: BorderRadius.circular(5),
                                 color: Colors.white
                               ),
                               child: Text("8",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
                             ),
                           ),
                           Container(
                             alignment: Alignment.center,
                             height: 40,
                             width: 40,
                             decoration: BoxDecoration(
                               borderRadius: BorderRadius.circular(5),
                               color: Colors.white
                             ),
                             child: Text("9",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
                           ),
                           Padding(
                             padding: const EdgeInsets.all(8.0),
                             child: Container(
                               alignment: Alignment.center,
                               height: 40,
                               width: 40,
                               decoration: BoxDecoration(
                                 borderRadius: BorderRadius.circular(5),
                                 color: Colors.white
                               ),
                               child: Text("10",style: TextStyle(fontSize:18 ,fontWeight: FontWeight.bold),),
                             ),
                           ),
                           Container(
                             alignment: Alignment.center,
                             height: 40,
                             width: 40,
                             decoration: BoxDecoration(
                               borderRadius: BorderRadius.circular(5),
                               color: Colors.white
                             ),
                             child: Text("11",style: TextStyle(fontSize:18 ,fontWeight: FontWeight.bold),),
                           ),
                           
                         ],
                       ),
                       Padding(
                         padding: const EdgeInsets.only(top:15.0),
                         child: Row(
                           children: [
                             Container(
                               alignment: Alignment.center,
                               height: 40,
                               width: 100,
                               decoration: BoxDecoration(
                                 borderRadius: BorderRadius.circular(5),
                                 color: Colors.black
                               ),
                               child: Text("Black",style: TextStyle(fontSize:18 ,fontWeight: FontWeight.bold,color: Colors.white),),
                             ),
                             Container(
                               alignment: Alignment.center,
                               height: 40,
                               width: 100,
                               decoration: BoxDecoration(
                                 borderRadius: BorderRadius.circular(5),
                                 color: Colors.white
                               ),
                               child: Text("White",style: TextStyle(fontSize:18 ,fontWeight: FontWeight.bold),),
                             ),

                           ],
                         ),
                       ),
                    
                     
                     
                     Container(
                           width: 500,
                           height: 50,
                           alignment: Alignment.center,
                           decoration: BoxDecoration(
                             borderRadius: BorderRadius.circular(15),
                             color: Colors.black
                           ),
                           child: Text("ADD",style: TextStyle(color: Colors.white,fontSize: 18,fontWeight: FontWeight.bold),),
                         ),



                    
                    ],
                  ),
                ),
              ),
            ),
          ),

          Hero(
            tag: item.name,
            child: Image.asset(
              item.imgurl,
             height: MediaQuery.of(context).size.height *0.5,
             width: MediaQuery.of(context).size.width *0.5,
              //fit: BoxFit.fitHeight,
            )
          ),
        ],
      ), 
    );
  }
}
