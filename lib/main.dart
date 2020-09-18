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
  int curr_step = 0;
  List<Step> mySteps = [
    new Step(
        title: new Text("step1"),
        content: new Text("content1"),
        isActive: true),
    new Step(
        title: new Text("step2"),
        content: new Text("content2"),
        isActive: true),
    new Step(
        title: new Text("step3"),
        content: new Text("content3"),
        isActive: true),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: new AppBar(
          title: new Text("Material widgets"),
        ),
        body: new Container(
          child: new Stepper(
            steps: mySteps,
            currentStep: this.curr_step,
            type: StepperType.vertical,
          ),
        ));
  }
}

// class MyBody extends StatelessWidget {
//   AlertDialog dialog = new AlertDialog(
//     content: new Text(
//       "Dialog is up!",
//       style: new TextStyle(fontSize: 30.0),
//     ),
//     title: new Text("Hi"),
//   );

//   @override
//   Widget build(BuildContext context) {
//     return new Container(
//         child: Center(
//             child: new RaisedButton(
//       child: new Text(
//         "Click Me",
//         style: new TextStyle(color: Colors.white),
//       ),
//       color: Colors.redAccent,
//       // onPressed: () => Scaffold.of(context).showSnackBar(new SnackBar(
//       //   content: new Text("You clicked me"),
//       //   duration: new Duration(seconds: 3),
//       //)),
//       onPressed: () => showDialog(context: context, child: dialog),
//     )));
//   }
// }
