
import 'package:cluedo/Components/menu.dart';
import 'package:flutter/material.dart';

class Menubar extends StatelessWidget {
  const Menubar ({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        Container(
          width: 73,
          height: 40,
          child: Image(
            image: AssetImage('assets/Cluedo-logo.png'),
            fit: BoxFit.contain,
          ),
          
        ),
        Menu(),
        
      ],
    );
  }
}
