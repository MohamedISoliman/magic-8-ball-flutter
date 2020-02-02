import 'package:flutter/material.dart';
import 'dart:math';

void main() => runApp(
      MaterialApp(
        home: Scaffold(
          backgroundColor: Colors.blue,
          appBar: AppBar(
            backgroundColor: Colors.blue.shade900,
            title: Text("MagicBall"),
          ),
          body: MagicBall(),
        ),
      ),
    );

class MagicBall extends StatefulWidget {
  MagicBall({Key key}) : super(key: key);

  @override
  _MagicBallState createState() => _MagicBallState();
}

class _MagicBallState extends State<MagicBall> {
  var ballNum = 1;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: FlatButton(
            onPressed: () {
              setState(() {
                ballNum = Random().nextInt(5) + 1;
                print("CLicked");
              });
            },
            child: Image.asset("images/ball$ballNum.png")),
      ),
    );
  }
}

// home: Scaffold(
//     backgroundColor: Colors.red,
//     appBar: AppBar(
//       centerTitle: true,
//       title: Text('Dicee'),
//       backgroundColor: Colors.red,
//     ),
//     body: DicePage(),
//   ),
// )
