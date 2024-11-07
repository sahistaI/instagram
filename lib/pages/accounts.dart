import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:instagram/util/account_tab1.dart';
import 'package:instagram/util/account_tab2.dart';
import 'package:instagram/util/account_tab3.dart';
import 'package:instagram/util/bubble_stories.dart';

class UserAccount extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return DefaultTabController( length:3,
      child: Scaffold(
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 20.0,top: 30.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: 100,
                    width: 100,
                    decoration: BoxDecoration(
                      color: Colors.grey[300],
                      shape: BoxShape.circle
                    ),
                  ),
      
                  Expanded(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Column(
                          children: [
                            Text('237',style: TextStyle(
                                fontWeight:FontWeight.bold, fontSize:20
                            ),),
                            Text('Posts')
                          ],
                        ),
                        Column(
                          children: [
                            Text('3930',style: TextStyle(
                                fontWeight:FontWeight.bold, fontSize:20
                            ),),
                            Text('Followers')
                          ],
                        ),
                        Column(
                          children: [
                            Text('40',style: TextStyle(
                                fontWeight:FontWeight.bold, fontSize:20
                            ),),
                            Text('Following')
                          ],
                        ),
                      ],
                    ),
                  ),
               ]
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('krystal',
                  style: TextStyle(
                    fontWeight: FontWeight.bold
                  ),),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 2.0),
                    child: Text(' i create apps & games',
                     ),
                  ),
                  Text('m.youtube.com/krystal/',
                  style: TextStyle(color: Colors.blue),)
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal:20.0),
              child: Row(
                children: [
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(2.0),
                      child: Container(
                        decoration: BoxDecoration(
                          border:Border.all(color: Colors.grey),
                          borderRadius: BorderRadius.circular(5),
                        ),
                        child: Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: Text('Edit Profile'),
                                            ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(2.0),
                      child: Container(
                        decoration: BoxDecoration(
                          border:Border.all(color: Colors.grey),
                          borderRadius: BorderRadius.circular(5),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: Text('Add Tools'),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(2.0),
                      child: Container(
                        decoration: BoxDecoration(
                          border:Border.all(color: Colors.grey),
                          borderRadius: BorderRadius.circular(5),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: Text('Insights'),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            ///Stories
      
            Padding(
              padding: const EdgeInsets.symmetric(horizontal:20.0,vertical: 10),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                
                  children: [
                    BubbleStories(text: 'story 1'),
                    BubbleStories(text: 'story 2'),
                    BubbleStories(text: 'story 3'),
                    BubbleStories(text: 'story 4'),
                    BubbleStories(text: 'story 5'),
                    BubbleStories(text: 'story 6'),
                  ],
                ),
              ),
            ),
            TabBar(tabs: [
                Tab(
                  icon: Icon(Icons.grid_3x3_outlined),
                ),
              Tab(
                icon: Icon(Icons.video_call),
              ),
              Tab(
                icon: Icon(Icons.person),
              )
            ]),

            Expanded(child:
            TabBarView(
              children: [
                AccountTab1(),
                AccountTab2(),
                AccountTab3(),
              ],
            ))

              ],
            ),
      
      ),
    );
  }



}

/// Helper method tobuild a list

