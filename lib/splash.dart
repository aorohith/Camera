import 'dart:async';

import 'package:camera/db/db_functions.dart';
import 'package:camera/home.dart';
import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';

import '../main.dart';

class SplashPage extends StatefulWidget {
  @override
  _SplashPageState createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  late final box;
  startTime() async {
    var _duration = Duration(seconds: 2);
    return Timer(_duration, navigationPage);
  }

  void navigationPage() {
    Navigator.push(context, MaterialPageRoute(builder: (context) => Home()));
  }

  @override
  void initState() {
    super.initState();
    box = Hive.openBox('imageBox');
    getAllImage();
    startTime();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.symmetric(vertical: 150.0),
        child: Center(
          child: Column(
            children: <Widget>[
              Text(
                'VSCO',
                style: TextStyle(
                    letterSpacing: 6,
                    color: Colors.blueGrey,
                    fontWeight: FontWeight.w500,
                    fontSize: 22),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
