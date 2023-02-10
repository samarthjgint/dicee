import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      appBar: AppBar(
        title: Text('Roll A Dice'),
        backgroundColor: Colors.black,
      ),
      body: Dice(),
    ),
  ));
}


class Dice extends StatefulWidget {
  const Dice({Key? key}) : super(key: key);

  @override
  State<Dice> createState() => _DiceState();
}

class _DiceState extends State<Dice> {
  int dicenuml = 2;
  var dicenumr = 1;
  void roll(){
    dicenuml = Random().nextInt(6)+1;
    dicenumr = Random().nextInt(6)+1;
  }
  @override
  Widget build(BuildContext context) {




    return Container(
        child: Center(
          // uygt
          child: Row(children: <Widget>[
            Expanded(
              child: FlatButton(
              onPressed: () {
                setState(() {
                  roll();
                });
              },
                child: Image.asset('images/$dicenuml.png'),
              ),
            ),
            Expanded(
              child: FlatButton(
                child: Image.asset('images/$dicenumr.png'),
                onPressed: () {
                  setState(() {
                   roll();
                  });
                },
              ),
            ),
          ]),
        ));
  }
  }

















