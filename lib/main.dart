import 'dart:math';

import 'package:flutter/material.dart';

void main() => runApp(
      MaterialApp(
        home: BallPage(),
      ),
    );

class Ball extends StatefulWidget {
  @override
  _BallState createState() => _BallState();
}

class _BallState extends State<Ball> {

  int ballNumber = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blue[200],
      child: Center(
        child: FlatButton(
          onPressed: () { _randomImageIndexGenerator(); },
          child: Image.asset('images/ball${ballNumber +1}.png'),
        ),
      ),
    );
  }

  void _randomImageIndexGenerator(){
     Random random = new Random();

     setState(() {
       ballNumber = random.nextInt(4);
     });
  }
}

class BallPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Ask me Anything'),
        backgroundColor: Colors.blue[900],
      ),
      body: Ball(),
    );
  }
}
