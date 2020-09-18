import 'package:flutter/material.dart';

void main() {
  runApp(new MaterialApp(
    theme: new ThemeData(
      primarySwatch: Colors.green,
    ),
    home: new HomePage(),
  ));
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: new AppBar(
          title: new Text("Material widgets"),
        ),
        body: new MyBody());
  }
}

class MyBody extends StatelessWidget {
  AlertDialog dialog = new AlertDialog(
    content: new Text(
      "Dialog is up!",
      style: new TextStyle(fontSize: 30.0),
    ),
    title: new Text("Hi"),
  );

  @override
  Widget build(BuildContext context) {
    return new Container(
        child: Center(
            child: new RaisedButton(
      child: new Text(
        "Click Me",
        style: new TextStyle(color: Colors.white),
      ),
      color: Colors.redAccent,
      // onPressed: () => Scaffold.of(context).showSnackBar(new SnackBar(
      //   content: new Text("You clicked me"),
      //   duration: new Duration(seconds: 3),
      //)),
      onPressed: () => showDialog(context: context, child: dialog),
    )));
  }
}
