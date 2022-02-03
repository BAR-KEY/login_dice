import 'package:flutter/material.dart';
import 'dart:math';

class Dice extends StatefulWidget {
  Dice({
    Key? key,
  }) : super(key: key);
  int leftDice1 = 1;
  int leftDice2 = 1;

  @override
  State<Dice> createState() => _DiceState();
}

class _DiceState extends State<Dice> {
  randomDice() {
    var result1 = Random().nextInt(6) + 1;
    var result2 = Random().nextInt(6) + 1;
    setState(() {
      widget.leftDice1 = result1;
      widget.leftDice2 = result2;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.redAccent,
      appBar: AppBar(
        backgroundColor: Colors.redAccent,
        title: Text('Dice game'),
      ),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(32.0),
            child: Row(
              children: [
                Expanded(
                  child: Image.asset('image/dice${widget.leftDice1}.png'),
                ),
                SizedBox(
                  width: 20,
                ),
                Expanded(
                  child: Image.asset('image/dice${widget.leftDice2}.png'),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 60,
          ),
          ButtonTheme(
              minWidth: 100,
              height: 60,
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: Colors.orangeAccent,
                  ),
                  onPressed: () {
                    randomDice();
                  },
                  child: Icon(
                    Icons.play_arrow,
                    color: Colors.white,
                    size: 50,
                  )))
        ],
      )),
    );
  }
}
