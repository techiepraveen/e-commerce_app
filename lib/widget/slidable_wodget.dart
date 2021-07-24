import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

enum SlidableAction { archive, share, more, delete }

class SlidableWidget<T> extends StatelessWidget {
  final Widget child;
  final Function(SlidableAction action) onDismissed;

  const SlidableWidget({
    @required this.child,
    @required this.onDismissed,
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) => Slidable(
        actionPane: SlidableDrawerActionPane(),
        child: child,

        /// left side
        actions: <Widget>[
          Container(
            height: 220,
            width: 40,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20),
                bottomLeft: Radius.circular(20)),
               color: Colors.deepPurple[900],

            ),
            child: Icon(Icons.archive,color: Colors.white,),
          ),
          Container(
            height: 220,
            width: 40,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20),
                bottomLeft: Radius.circular(20)),
               color: Colors.deepPurple[800],

            ),
            child: Icon(Icons.share,color: Colors.white,),
          ),
          
         
        ],

        /// right side
        secondaryActions: <Widget>[
          Container(
            height: 220,
            width: 40,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(20),
                bottomRight: Radius.circular(20)),
               color: Colors.deepPurple[800],

            ),
            child: Icon(Icons.favorite,color: Colors.white,),
          ),
          
          Container(
            height: 220,
            width: 40,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(20),
                bottomRight: Radius.circular(20)),
               color: Colors.deepPurple[900],

            ),
            child: Icon(Icons.shopping_cart,color: Colors.white,),
          ),
          
        ],
      );
}
