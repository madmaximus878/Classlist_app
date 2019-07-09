import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import './Home.dart';
import './Parent.dart';
import './Messages.dart';
import './Create.dart';
import './More.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return MyAppState();
  }
}

class MyAppState extends State<MyApp> {
  int _selectedPage = 0;
  final _pageOptions = [
    HomePage(),
    ParentPage(),
    CreatePage(),
    MessagesPage(),
    MorePage(),
  ];

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Classlist',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text('Classlist'),
        ),
        body: _pageOptions[_selectedPage],
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          currentIndex: _selectedPage,
          onTap: (int index) {
            setState(() {
              _selectedPage = index;
            });
          },
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home), title: Text('Home')),
            BottomNavigationBarItem(icon: Icon(Icons.contacts), title: Text('Parents')),
            BottomNavigationBarItem(icon: Icon(Icons.add), title: Text('Create')),
            BottomNavigationBarItem(icon: Icon(Icons.message), title: Text('Messages')),
            BottomNavigationBarItem(icon: Icon(Icons.menu), title: Text('More')),
          ],
        ),
      ),
    );
  }
}
