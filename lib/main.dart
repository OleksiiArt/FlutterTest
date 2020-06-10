import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(new MaterialApp(
    debugShowCheckedModeBanner: false,
    home: new MainScreen(),
  ));
}

class MainScreen extends StatefulWidget {
  @override
  _MainScreenState createState() => new _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Test App"),
      ),
      body: new MyWidget(),
    );
  }
}

class MyWidget extends StatefulWidget {

  @override
  _MyWidgetState createState() => new _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
  Color _color = Colors.white;
  String _text = 'Hey there';
  Color _textColor = Colors.green;

  @override
  void initState() {
    super.initState();
    _color = _color;
    _text = _text;
    _textColor = _textColor;
  }

  _changeColor() {
    setState(() {
      final random = Random();
      _color = Color.fromRGBO(
        random.nextInt(256),
        random.nextInt(256),
        random.nextInt(256),
        1,
      );
      _textColor = Color.fromRGBO(
        random.nextInt(222),
        random.nextInt(222),
        random.nextInt(222),
        1,
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return new GestureDetector(
      onTap: () => _changeColor(),
      child: new Container(
        width: double.infinity,
        height: double.infinity,
        decoration: new BoxDecoration(
          color: _color,
        ),
        child: new Center(
          child: Text(_text, style: TextStyle(fontSize: 30, color: _textColor, decoration: TextDecoration.none)),
        ),
      ),
    );
  }
}
