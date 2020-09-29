import 'package:flutter/material.dart';
import 'dart:math';

void main() => runApp(
      MaterialApp(
        debugShowCheckedModeBanner: false,
        home: BallPage(),
      ),
    );

class BallPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.blue,
      appBar: AppBar(
        centerTitle: true,
        title: Text('Magic 8 Ball- Ask Me Anything'),
        backgroundColor: Colors.blue.shade900,
      ),
    body: Ball(),

    );
  }
}

class Ball extends StatefulWidget {
  @override
  _BallState createState() => _BallState();
}

class _BallState extends State<Ball> {
  int ballNumber = 0;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(

            child: FlatButton(
              splashColor: Colors.transparent,
              highlightColor: Colors.transparent,
              onPressed: (){
                setState(() {
                  ballNumber = Random().nextInt(5) + 1;
                  print('Button is pressed: $ballNumber');
                });
              },
                child: Image.asset('images/ball$ballNumber.png'),
            ),
          ),
        ],
      ),

    );
  }
}
