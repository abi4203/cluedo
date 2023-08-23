import 'package:cluedo/Components/navbar1.dart';
import 'package:flutter/material.dart';

class HowToPlay extends StatelessWidget {
  const HowToPlay({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          NavBar1()
        ],
      ),
    );
  }
}