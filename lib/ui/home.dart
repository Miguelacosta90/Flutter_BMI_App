import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return new HomeState();
  }
}

class HomeState extends State<Home> {
  final TextEditingController _userName = new TextEditingController();
  final TextEditingController _userHeight = new TextEditingController();
  final TextEditingController _userWeight = new TextEditingController();
  final TextEditingController _userAge = new TextEditingController();

//  String _bmiOutput;
  String _userInput;
  String _bmiInput;
  double _calc;

  void _press() {
    setState(() {
      _userName.clear();
      _userHeight.clear();
      _userWeight.clear();
      _userAge.clear();
    });
  }

  void _bmiMath() {
    setState(() {
      double _height = double.parse(_userHeight.text);
      double _weight = double.parse(_userWeight.text);
      if (_userHeight.text.isNotEmpty && _userWeight.text.isNotEmpty) {
        _height = 12 * _height;
        _calc = (_weight / (_height * _height) * 703);
        _bmiInput = _calc.toStringAsFixed(2);
      } else {
        _bmiInput = "More info";
      }

      if (_userName.text.isNotEmpty) {
        _userInput = _userName.text;
      } else {
        _userInput = "x";
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("BMI Ninja"),
        centerTitle: true,
        backgroundColor: Colors.pinkAccent,
      ),
      body: new Container(
        alignment: Alignment.topCenter,
        child: new ListView(
          padding: const EdgeInsets.all(2.5),
          children: <Widget>[
            //this is to add our BMI LOGO
            new Image.asset(
              'img/bmilogo.png',
              height: 133.1,
              width: 200.1,
            ),

            // this is be for the input fields for users Information
            //Name input field
            new Container(
              margin: const EdgeInsets.all(3.0),
              alignment: Alignment.center,
              child: new Column(
                children: <Widget>[
                  new TextField(
                    controller: _userName,
                    decoration: new InputDecoration(
                      hintText: "Name",
                      icon: new Icon(Icons.person),
                    ),
                  )
                ],
              ),
            ),
            //Height input field
            new Container(
              margin: const EdgeInsets.all(3.0),
              alignment: Alignment.center,
              child: new Column(
                children: <Widget>[
                  new TextField(
                    controller: _userHeight,
                    keyboardType: TextInputType.number,
                    decoration: new InputDecoration(
                      hintText: "Height",
                      icon: new Icon(Icons.person_outline),
                    ),
                  )
                ],
              ),
            ),
            //weight input field
            new Container(
              margin: const EdgeInsets.all(3.0),
              alignment: Alignment.center,
              child: new Column(
                children: <Widget>[
                  new TextField(
                    controller: _userWeight,
                    keyboardType: TextInputType.number,
                    decoration: new InputDecoration(
                      hintText: "Weight",
                      icon: new Icon(Icons.line_weight),
                    ),
                  )
                ],
              ),
            ),
            //Age input field
            new Container(
              margin: const EdgeInsets.all(3.0),
              alignment: Alignment.center,
              child: new Column(
                children: <Widget>[
                  new TextField(
                    controller: _userAge,
                    keyboardType: TextInputType.number,
                    decoration: new InputDecoration(
                      hintText: "Age",
                      icon: new Icon(Icons.access_time),
                    ),
                  )
                ],
              ),
            ),
            //when user inputs all info Calculate button will display users BMI
            new Padding(padding: new EdgeInsets.all(10.5)),
            new Center(
              child: new Row(
                children: <Widget>[
                  new Container(
                    margin: const EdgeInsets.only(left: 59.0),
                    child: new RaisedButton(
                      onPressed: _bmiMath,
                      child: const Text("Calculate"),
                      color: Colors.pinkAccent,
                    ),
                  ),
                  //clear button will clear all text
                  new Container(
                    margin: const EdgeInsets.only(left: 90.0),
                    child: new RaisedButton(
                      onPressed: _press,
                      child: const Text("Clear"),
                      color: Colors.pinkAccent,
                    ),
                  )
                ],
              ),
            ),
            //this will display the Text for the user
            new Padding(padding: new EdgeInsets.all(20.0)),
            new Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                new Text(
                  "$_userInput Your BMI is, $_bmiInput",
                  style: new TextStyle(
                      color: Colors.pinkAccent,
                      fontSize: 25.0,
                      fontWeight: FontWeight.w500),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
