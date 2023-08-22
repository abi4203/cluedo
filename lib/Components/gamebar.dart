
import 'package:cluedo/Components/menu.dart';
import 'package:cluedo/Components/pause.dart';
import 'package:flutter/material.dart';

class Appbar extends StatelessWidget {
  const Appbar ({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: <Widget>[
        Container(
          width: 73,
          height: 40,
          child: Image(
            image: AssetImage('assets/Cluedo-logo.png'),
            fit: BoxFit.contain,
          ),
          
        ),
        Pause(),
        
      ],
    );
  }
}
