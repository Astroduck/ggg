import 'package:flutter/material.dart';

class SecondScreen extends StatefulWidget {
  SecondScreen({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _SecondScreenState createState() => _SecondScreenState();
}

class _SecondScreenState extends State<SecondScreen> {
  TextStyle style = TextStyle(fontFamily: 'Montserrat', fontSize: 20.0);

  @override
  Widget build(BuildContext context) {
    final titleText = Text("yo Girls", style: TextStyle(color: Colors.white,
    fontSize: 50.0, fontWeight: FontWeight.bold, decoration: TextDecoration.underline), 
    textAlign: TextAlign.center);
    final addButton = Material(
      elevation: 5.0,
      borderRadius: BorderRadius.circular(500.0),
      color: Colors.red,
      child: MaterialButton(
        minWidth: MediaQuery.of(context).size.width,
        onPressed: () {},
        child: Image.asset('images/plus.png')
      ),
    );
    final camButton = Material(
      elevation: 5.0,
      borderRadius: BorderRadius.circular(500.0),
      color: Colors.white,
      child: MaterialButton(
        minWidth: MediaQuery.of(context).size.width,
        onPressed: () {},
        child: Image.asset('images/camera.png')
      ),
    );
    final row = Row(children: <Widget>[
      Expanded(child: addButton),
      SizedBox(width: 50.0),
      Expanded(child: camButton)
    ]);
    return Scaffold(
      resizeToAvoidBottomPadding: true,
      body: Center(
        child: Container(
          color: Colors.black,
          child: Padding(
            padding: const EdgeInsets.all(36.0),
            child: ListView(
              children: <Widget>[
                SizedBox(height: 15.0),
                titleText,
                SizedBox(height: 30.0),
                row
              ]
            ),
          ),
        ),
      ),
    );
  }
}