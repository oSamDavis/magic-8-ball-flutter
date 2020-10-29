import 'dart:math';
import 'package:flutter/material.dart';

void main() => runApp(
      MaterialApp( // material App widget
        home: BallPage(),  // setting the home page of my material app to be BallPage
      ),
    );

class BallPage extends StatelessWidget { // creating a Stateless BallPage widget
  @override
  Widget build(BuildContext context) {
    return Scaffold( // Scaffold widget to help with the Layout
      appBar: AppBar( // Appbar Widget
        title: Text('Ask Me Anything'), // Setting my title property
        backgroundColor: Colors.blue[900], // Setting my background of my appBar
      ),
      backgroundColor: Colors.blue[500],  // setting my background of my Scaffold
      body: Ball(), // setting the body of my BallPage to be a Ball

    );
  }
}


class Ball extends StatefulWidget { // creating a stateful widget called Ball
  @override
  _BallState createState() => _BallState();
}

class _BallState extends State<Ball> { // my Stateful Ball widget
  int ballVariable = 1; // ball variable to update the picture of displayed

  void randomizeBall()  // a void function intended to randomize the ball variable number
  {
    setState(() { // since I want the state to change when randomized, I call the setState() {} method
      ballVariable = 1 + Random().nextInt(5); // calling Random().nextInt() to generate random number
    });
  }
  @override
  Widget build(BuildContext context) {
    return Center( // Center widget, to ensure my container is at the center of the page
      child: Container( // Container widget, to contain a button as it's child
        child: TextButton( // TextButton to accommodate my ball picture and also define behaviours when clicked
            onPressed: () // setting the onPressed field(i.e void, parameter-less func)
                      {
                          randomizeBall(); // calling my randomizeBall function
                          print('I got clicked.' + ballVariable.toString()); // printing helpful message to the console
                      },
            child: Image.asset('images/ball$ballVariable.png')  // using string interpolation(i.e '$') to set the image asset
        ),
      ),
    );
  }
}
