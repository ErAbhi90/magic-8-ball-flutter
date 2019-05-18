import 'package:flutter/material.dart';

class Magic8Ball extends StatefulWidget {
  @override
  _Magic8BallState createState() => _Magic8BallState();
}

class _Magic8BallState extends State<Magic8Ball> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: FlatButton(
        child: Image.asset('images/ball1.png'),
        onPressed: () {
          debugPrint("I got Clicked");
        },
      ),
    );
  }
}
