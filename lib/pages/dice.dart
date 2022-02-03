import 'package:flutter/material.dart';

class Dice extends StatelessWidget {
  const Dice({Key? key}) : super(key: key);

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
                  child: Image.asset('image/dice1.png'),
                ),
                SizedBox(
                  width: 20,
                ),
                Expanded(
                  child: Image.asset('image/dice2.png'),
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
                  onPressed: () {},
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
