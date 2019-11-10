import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:lavanderia/pages/HomePage.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}
class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          Container(
            decoration: new BoxDecoration(
              borderRadius:
              BorderRadius.all(Radius.circular(15.0)),
              image: new DecorationImage(
                image: new AssetImage("assets/plant.jpg"),
                fit: BoxFit.cover,
              ),
            ),
            child: new BackdropFilter(
              filter: new ImageFilter.blur(sigmaX: 4.0, sigmaY: 4.0),
              child: new Container(
                decoration: new BoxDecoration(color: Colors.blue),
                // decoration: new BoxDecoration(color: Colors.black.withOpacity(0.7)),
              ),
            ),
          ),
          Container(

              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Expanded(
                    flex: 2,
                    child: Container(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          CircleAvatar(

                            backgroundColor: Colors.transparent,
                            radius: 80.0,
                            child: Padding(
                              padding: EdgeInsets.all(10),
                              child: Image.asset('assets/logo.png'),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: 10.0),
                          ),
                          Text(
                            "Lavanderia",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 30.0,
                                fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        CircularProgressIndicator(
                          valueColor: new AlwaysStoppedAnimation<Color>(Colors.indigo),
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 40.0),
                        ),

                      ],
                    ),
                  )
                ],
              )
          ),

        ],
      ),
    );
  }

  _onSplashEnd() {
    Navigator.pushReplacement(context,
        new MaterialPageRoute(builder: (BuildContext context) => HomePage()));
  }
}
