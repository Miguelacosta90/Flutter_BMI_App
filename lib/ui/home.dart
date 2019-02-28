import 'package:flutter/material.dart';

class Home extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return new HomeState();
  }

}

class HomeState extends State<Home>{
  String _pressing = 'test';
  void _Press(){
    setState(() {
      debugPrint(_pressing);
    });
  }
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("BMI"),
        centerTitle: true,
        backgroundColor: Colors.pinkAccent,
      ),

      body: new Container(
        alignment: Alignment.topCenter,
        child: new ListView(
          padding: const EdgeInsets.all(2.5),
          children: <Widget>[
            //this is to add our BMI LOGO
            new Image.asset('img/bmilogo.png',
            height: 133.1,
            width: 200.1,),

            // this is be for the input fields for users Information
            new Container(
              margin: const EdgeInsets.all(3.0),
              alignment: Alignment.center,
              child: new Column(
                children: <Widget>[
                  new TextField(
                    controller: null,
                    keyboardType: TextInputType.number,
                    decoration: new InputDecoration(
                      hintText: "Name",
                      icon: new Icon(Icons.person),
                    ),
                  )
                ],
              ),
            ),
            new Container(
              margin: const EdgeInsets.all(3.0),
              alignment: Alignment.center,
              child: new Column(
                children: <Widget>[
                  new TextField(
                    controller: null,
                    keyboardType: TextInputType.number,
                    decoration: new InputDecoration(
                      hintText: "Height",
                      icon: new Icon(Icons.person_outline),
                    ),
                  )
                ],
              ),
            ),
            new Container(
              margin: const EdgeInsets.all(3.0),
              alignment: Alignment.center,
              child: new Column(
                children: <Widget>[
                  new TextField(
                    controller: null,
                    keyboardType: TextInputType.number,
                    decoration: new InputDecoration(
                      hintText: "Weight",
                      icon: new Icon(Icons.line_weight),
                    ),
                  )
                ],
              ),
            ),
            new Container(
              margin: const EdgeInsets.all(3.0),
              alignment: Alignment.center,
              child: new Column(
                children: <Widget>[
                  new TextField(
                    controller: null,
                    keyboardType: TextInputType.number,
                    decoration: new InputDecoration(
                      hintText: "Age",
                      icon: new Icon(Icons.access_time),
                    ),
                  )
                ],
              ),
            ),
            new Padding(padding: new EdgeInsets.all(10.5)),
            new Center(
              child: new Row(
                children: <Widget>[
                  new Container(
                    margin: const EdgeInsets.only(left:59.0),
                    child: new RaisedButton(
                      onPressed: () {
                        debugPrint("test");
                      },
                      child: const Text("Calculate"),
                      color: Colors.pinkAccent,
                    ),
                  )
                ],
              ),
            )

          ],
        ),
      ),
    );

  }
}