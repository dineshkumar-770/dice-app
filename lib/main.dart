import 'package:flutter/material.dart';
import 'dart:math';
void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          toolbarHeight: 50.0,
          title: Center(child: Text('शकुनि मामा के पासे')),
          backgroundColor: Colors.black,
          titleTextStyle: TextStyle(fontSize: 30.0,
          color: Colors.lightBlue,
          ),
        ),
        body: DicePage(),
      ),
    ),
  );
}

class DicePage extends StatefulWidget {
  @override
  State<DicePage> createState() => _DicePageState();
}
class _DicePageState extends State<DicePage> {
  int leftdicenumber = 1;
  int rightdicenumber = 4;
  void changediceface(){

    setState(() {
      int random(min, max) {
        return min + Random().nextInt(max - min);
      }
      int image_number = random(1, 7);
      leftdicenumber = image_number;

      setState(() {
        int random(min, max) {
          return min + Random().nextInt(max - min);
        }
        int image_number = random(1, 7);
        rightdicenumber = image_number;
      });
    });
  }
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            child: ElevatedButton(
              style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.black)
              ),
              onPressed: (){
                changediceface();
              },
              child: Image.asset('images/dice$leftdicenumber.png'),
            ),
          ),
          Expanded(
            child: ElevatedButton(
              style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.black)
              ),
              onPressed: (){
                setState(() {
                  changediceface();
                });
              },
              child: Image.asset('images/dice$rightdicenumber.png'),
            ),
          ),
        ],
      ),
    );
  }
}
