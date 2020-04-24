import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          primaryColor: Color(0xFFFF9800),
          accentColor: Color(0xFFFFE0B2),
          highlightColor: Color(0xFFFFF3E0),
          textTheme: TextTheme(
            body1: TextStyle(color: Colors.black),
            body2: TextStyle(color: Colors.black),
          )
      ),
      home: SignIn(),
    );
  }
}
