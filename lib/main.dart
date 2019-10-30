import 'dart:async';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  final _controller = StreamController<double>();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Stream Guide',
      home: Scaffold(
        body: Center(
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              MaterialButton(
                child: Text('Subscribe'),
                color: Colors.yellow,
                onPressed: () {
                  Stream stream = _controller.stream;
                  stream.listen((value) {
                    print('Value from the controller: $value');
                  });
                },    
              )
          ],),
        ),
      )
    );
  }
}