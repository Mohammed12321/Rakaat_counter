/////////////////

////Enable and disable button

/////////////////


import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(
                title: Text('Flutter Enable Disable Button')
            ),
            body: Center(
                child: Button()
            )
        )
    );
  }
}

class Button extends StatefulWidget {

  ButtonState createState() => ButtonState();

}

class ButtonState extends State<Button> {

  bool isEnabled = true ;

  enableButton(){

    setState(() {
      isEnabled = true;
    });
  }

  disableButton(){

    setState(() {
      isEnabled = false;
    });
  }

  sampleFunction(){

    print('Clicked');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[

              RaisedButton(
                onPressed: isEnabled ? ()=> sampleFunction() : null,
                color: Colors.pinkAccent,
                textColor: Colors.white,
                padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                child: Text('Sample Button'),
              ),

              RaisedButton(
                onPressed: enableButton,
                color: Colors.green,
                textColor: Colors.white,
                padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                child: Text('Click Here Enable Above Button'),
              ),

              RaisedButton(
                onPressed: disableButton,
                color: Colors.green,
                textColor: Colors.white,
                padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                child: Text('Click Here Disable Above Button'),
              ),

            ],
          ),
        ));
  }
}