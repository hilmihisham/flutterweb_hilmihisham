import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'indexPage_widget.dart';
import 'placeholder_widget.dart';
import 'resumePage_widget.dart';

class Home extends StatefulWidget {
  Home({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  // 20201018 hilmi - add bottom nav bar
  int _currentNavBarIndex = 0;

  // all pages must be insert into this list
  final List<Widget> _children = [
    IndexPage(),
    PlaceholderWidget(Colors.orange),
    ResumePage(),
    // PlaceholderWidget(Colors.red),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      // appBar: AppBar(
      //   title: Text('hilmihisham'),
      // ),

      body: _children[_currentNavBarIndex],

      // 20201018 hilmi - add bottom nav bar [start]
      bottomNavigationBar: BottomNavigationBar(

        onTap: onTabTapped,
        
        currentIndex: _currentNavBarIndex,
        
        items: [

          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),

          BottomNavigationBarItem(
            icon: FaIcon(FontAwesomeIcons.code),
            label: 'Code Repo',
          ),

          BottomNavigationBarItem(
            icon: FaIcon(FontAwesomeIcons.solidAddressCard),
            label: 'Resume',
          ),

        ],
      ),
      // 20201018 hilmi - add bottom nav bar [end]

    );
  }

  void onTabTapped(int index) {
    setState(() {
      _currentNavBarIndex = index;
    });
  }

}
