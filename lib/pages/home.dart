import 'package:cluedo/Components/joinbutton.dart';
import 'package:cluedo/Components/navbar1.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: <Widget>[
            NavBar1(),
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  RawMaterialButton(
                    onPressed: () {
                      Navigator.pushNamed(context, '/game');
                    },
                    elevation: 2.0,
                    fillColor: Colors.white,
                    child: Icon(
                      Icons.play_arrow_rounded,
                      size: 115,
                      color: Colors.red[800],
                    ),
                    padding: EdgeInsets.all(10.0),
                    splashColor: Colors.black12,
                    shape: CircleBorder(),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  JoinButton(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
