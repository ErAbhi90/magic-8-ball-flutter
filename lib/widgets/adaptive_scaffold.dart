import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:magic_8_ball/ui/magic_8_ball.dart';

class AdaptiveScaffold extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    if (Platform.isIOS) {
      return CupertinoApp(
        home: CupertinoPageScaffold(
          child: Magic8Ball(),
          backgroundColor: Colors.red,
          navigationBar: CupertinoNavigationBar(
            backgroundColor: Colors.redAccent,
            heroTag: Text(
              "Magic 8 Ball",
              style: TextStyle(
                color: Colors.white,
                fontSize: 18.0,
              ),
            ),
          ),
        ),
      );
    } else {
      return MaterialApp(
        home: Scaffold(
          body: Magic8Ball(),
          backgroundColor: Colors.red,
          appBar: AppBar(
            backgroundColor: Colors.redAccent,
            title: Text(
              "Magic 8 Ball",
              style: TextStyle(
                color: Colors.white,
                fontSize: 18.0,
              ),
            ),
          ),
        ),
      );
    }
  }
}
