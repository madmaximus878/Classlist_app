import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
    Widget build(BuildContext context) {
      return Container(
        padding: EdgeInsets.all(25.0),
        child: Text('Welcome to the Home page!', style: TextStyle(fontSize: 36.0),),
      );
    }
}