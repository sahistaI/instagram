import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class UserPosts extends StatelessWidget{

  final String name;

  UserPosts({required this.name});


  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Container(
                width: 40,
                height: 40,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.grey[300],
                ),
              ),
            ),

            Expanded(
              child: Text(name,style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 16
              ),),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Icon(Icons.menu),
            ),

          ],
        ),
        Container(
          height: 400,
          color: Colors.grey[300],
        ),
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Icon(Icons.favorite),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal:12.0),
                    child: Icon(Icons.chat_bubble_outline),
                  ),
                  Icon(Icons.share),
                ],
              ),
              Icon(Icons.bookmark),
            ],
          ),
        ),

        /// like by..
        Padding(
          padding: const EdgeInsets.only(left: 16.0),
          child: Row(
            children: [
              Text('Liked by '),
              Text('mitchkoko ',style: TextStyle(
                fontWeight: FontWeight.bold
              ),),
              Text('and'),
              Text('others',style: TextStyle(
                  fontWeight: FontWeight.bold
              ),),
            ],
          ),
        ),

    /// caption

        Padding(
          padding: const EdgeInsets.only(left:16.0,top: 8),
          child: RichText(
            text: TextSpan(
              style: TextStyle(color: Colors.black),
              children: [
                TextSpan(text:name,style: TextStyle(
    fontWeight:FontWeight.bold,
    ),),
                TextSpan(text:' i turn the dirt they throwing into riches till im filthy' ),
              ]
            ),

          ),
        )

      ],
    );
  }
}