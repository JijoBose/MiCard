import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.teal,
        body: SafeArea(
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              CircleAvatar(
                radius: 50.0,
                backgroundImage: NetworkImage(
                  'https://avatars1.githubusercontent.com/u/13100108'
                ),
              ),
              Text(
                'Jijo Bose',
                style: TextStyle(
                  fontSize: 30,
                  color: Colors.white,
                  fontFamily: 'Pacifico',
                ),
              ),
            ],
          )
        ),
      ),
    );
  }
}
