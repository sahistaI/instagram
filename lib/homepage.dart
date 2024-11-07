import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:instagram/pages/accounts.dart';
import 'package:instagram/pages/home.dart';
import 'package:instagram/pages/reels.dart';
import 'package:instagram/pages/search.dart';

class HomePage extends StatefulWidget{
  @override
  State<StatefulWidget> createState() => _HomePageState();

}
class _HomePageState extends State<HomePage>{
// navigate around the bottom nav bar
  int _selectedindex=0;
  void _navigateBottomNavBar (int index) {
    setState(() {
      _selectedindex = index;
    });
  }
  // different page to navigate to
  final List<Widget> _children = [
    UserHome(),
    UserSearch(),
    UserReels(),
    UserAccount(),

  ];



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:_children[_selectedindex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex:_selectedindex,
        onTap: _navigateBottomNavBar,
        type: BottomNavigationBarType.fixed,
        items: [BottomNavigationBarItem(icon: Icon(Icons.home),label: 'home'),
          BottomNavigationBarItem(icon: Icon(Icons.search),label: 'search'),
          BottomNavigationBarItem(icon: Icon(Icons.video_call),label: 'reels'),
          BottomNavigationBarItem(icon: Icon(Icons.person),label: 'account'),],
      ),

    );
  }

}