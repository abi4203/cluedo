import 'package:cluedo/Components/card.dart';
// import 'package:cluedo/Components/navbar2.dart';
import 'package:cluedo/Components/guessButton.dart';
import 'package:cluedo/Components/navbar2.dart';
import 'package:cluedo/Components/scrollPage.dart';
import 'package:flutter/material.dart';

class SecondScreen extends StatelessWidget {
  const SecondScreen({Key? key})
      : super(key: key); // Corrected syntax for the constructor

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          NavBar2(),
          Center(
            child: GuessButton(),
          ),
          ScrollPage(),
        ],
      ),
    );
  }
}
