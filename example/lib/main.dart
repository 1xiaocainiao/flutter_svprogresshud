import 'package:flutter/material.dart';
import 'dart:async';

import 'package:flutter/services.dart';
import 'package:flutter_svprogresshud/flutter_svprogresshud.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blue,
        appBar: AppBar(
          title: const Text('Plugin example app'),
        ),
        body: Column(
          children: [
            MaterialButton(
              onPressed: () {
                FlutterSvprogresshud.show();
              },
              child: Text("show"),
            ),
            Spacer(),
            MaterialButton(
              onPressed: () {
                FlutterSvprogresshud.dismiss();
              },
              child: Text("dismiss"),
            ),
            Spacer(),
            MaterialButton(
              onPressed: () {
                FlutterSvprogresshud.dismiss(
                    delay: Duration(milliseconds: 3),
                    completion: () {
                      print("delay dismiss");
                    });
              },
              child: Text("delay dismiss"),
            )
          ],
        ),
      ),
    );
  }
}
