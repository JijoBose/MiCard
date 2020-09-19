import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';

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
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Neumorphic(
                style: NeumorphicStyle(
                  shape: NeumorphicShape.concave,
                  boxShape: NeumorphicBoxShape.roundRect(BorderRadius.circular(150)),
                  depth: 8,
                  lightSource: LightSource.topLeft,
                  color: Colors.grey
                ),
                child: CircleAvatar(
                  radius: 50.0,
                  backgroundImage: NetworkImage(
                  'https://avatars1.githubusercontent.com/u/13100108'),
                ),
              ),
              NeumorphicText(
                'Jijo Bose',
                style: NeumorphicStyle(
                  depth: 4,
                  color: Colors.white,
                ),
                textStyle: NeumorphicTextStyle(
                  fontSize: 30,
                  fontFamily: 'Pacifico',
                ),
              ),
              NeumorphicText(
                'Flutter Developer',
                style: NeumorphicStyle(
                  depth: 4,
                  color: Colors.teal.shade100,
                ),
                textStyle: NeumorphicTextStyle(
                  fontSize: 20.0,
                  letterSpacing: 2.5,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Source Sans Pro',
                ),
              ),
              SizedBox(
                height: 20.0,
                width: 150.0,
                child: Divider(
                  color: Colors.teal.shade100,
                ),
              ),
              Card(
                margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
                child: ListTile(
                  leading: Icon(
                    Icons.phone,
                    color: Colors.teal
                  ),
                  title: Text(
                    '+91 123 456 789',
                    style: TextStyle(
                      fontSize: 20.0,
                      color: Colors.teal.shade900,
                      fontFamily: 'Source Sans Pro'
                    )
                  ),
                ),
              ),
              Card(
                margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
                child: ListTile(
                  leading: Icon(
                    Icons.email,
                    color: Colors.teal,
                  ),
                  title: Text('contact@jijobose.com',
                    style: TextStyle(
                      color: Colors.teal.shade900,
                      fontFamily: 'Source Sans Pro',
                      fontSize: 20.0,
                    )
                  ),
                )
              )
            ],
          )
        ),
      ),
    );
  }
}
