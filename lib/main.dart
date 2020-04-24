import 'package:flightlist/homebottom.dart';
import 'package:flutter/material.dart';

import 'colors.dart';
import 'hometop.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: appTheme,
      
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}



class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
              child: Column(
          children: <Widget>[
            HomeTop(),
            HomeBottom()
          ],
        ),
      ),
      
    );
  }
}
