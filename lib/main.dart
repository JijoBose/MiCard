import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return NeumorphicApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      themeMode: ThemeMode.light,
      theme: NeumorphicThemeData(
        baseColor: Color(0xFFFFFFFF),
        lightSource: LightSource.topLeft,
        depth: 10,
      ),
      darkTheme: NeumorphicThemeData(
        baseColor: Color(0xFF3E3E3E),
        lightSource: LightSource.topLeft,
        depth: 6,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  MyHomePage({Key key}) : super(key: key);

  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: NeumorphicFloatingActionButton(
        child: Icon(Icons.add, size: 30),
        onPressed: () {},
      ),
      backgroundColor: NeumorphicTheme.baseColor(context),
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            headerPadding(context),
            Neumorphic(
              style: NeumorphicStyle(
                border: NeumorphicBorder(
                  color: Color(0x33000000),
                  width: 0.01,
                )
              ),
              child: Image(
                height: 150,
                image: NetworkImage(
                  'https://avatars1.githubusercontent.com/u/13100108')
              ),
            ),
            Text(
              'Jijo Bose',
              style: TextStyle(
                fontSize: 30,
                color: _textColor(context),
                fontFamily: 'Pacifico',
              ),
            ),
            Text(
              'Software Developer',
              style: TextStyle(
                color: Colors.teal.shade100,
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
            Padding(
              padding: const EdgeInsets.fromLTRB(30, 0, 30, 0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Icon(
                    Icons.phone,
                    color: _iconsColor(context),
                  ),
                  Text('  +91 123 456 789',
                    style: TextStyle(
                      fontSize: 20.0,
                      color: _textColor(context),
                      fontFamily: 'Source Sans Pro',
                    ),
                  ),
                ]
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(30, 10, 30, 0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Icon(
                    Icons.mail,
                    color: _iconsColor(context),
                  ),
                  Text('  bosejijo@gmail.com',
                    style: TextStyle(
                      fontSize: 20.0,
                      color: _textColor(context),
                      fontFamily: 'Source Sans Pro',
                    ),
                  ),
                ]
              ),
            ),
          ],
        ),
      ),
    );
  }

  headerPadding(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(15, 0, 10, 0),
      child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            NeumorphicButton(
              onPressed: () {
                print("onClick");
              },
              style: NeumorphicStyle(
                shape: NeumorphicShape.flat,
                boxShape: NeumorphicBoxShape.circle(),
              ),
              padding: const EdgeInsets.all(12.0),
              child: Icon(
                Icons.chevron_left,
                color: _iconsColor(context),
              ),
            ),
            NeumorphicButton(
              onPressed: () {
                NeumorphicTheme.of(context).themeMode =
                    NeumorphicTheme.isUsingDark(context)
                        ? ThemeMode.light
                        : ThemeMode.dark;
              },
              style: NeumorphicStyle(
                shape: NeumorphicShape.flat,
                boxShape: NeumorphicBoxShape.circle(),
              ),
              padding: const EdgeInsets.all(12.0),
              child: Icon(
                Icons.lightbulb_outline,
                color: _iconsColor(context),
              ),
            ),
          ]),
    );
  }

  Color _iconsColor(BuildContext context) {
    final theme = NeumorphicTheme.of(context);
    if (theme.isUsingDark) {
      return theme.current.accentColor;
    } else {
      return null;
    }
  }

  Color _textColor(BuildContext context) {
    if (NeumorphicTheme.isUsingDark(context)) {
      return Colors.white;
    } else {
      return Colors.black;
    }
  }
}
