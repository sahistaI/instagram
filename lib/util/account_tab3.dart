import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AccountTab3 extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        itemCount: 20,
        gridDelegate:SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
        itemBuilder: (context,index){
          return Padding(padding: EdgeInsets.all(2.0),
            child: Container(
              color: Colors.teal[100],
            ),
          );

        });
  }

}