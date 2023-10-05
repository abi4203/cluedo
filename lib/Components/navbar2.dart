import 'package:cluedo/Components/pauseIcon.dart';
import 'package:flutter/material.dart';

class NavBar2 extends StatelessWidget {
  const NavBar2({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10.0),
      // color: Colors.blue[400],
      height: 100,
      alignment: Alignment.bottomCenter,
      child: const Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        // mainAxisSize: MainAxisSize.min
        children: <Widget>[
          Image(
            width: 80,
            height: 45,
            fit: BoxFit.fitHeight,
            filterQuality: FilterQuality.high,
            image: AssetImage('assets/Cluedo-logo.png'),
          ),
          PauseIcon(),
        ],
      ),
    );
  }
}
