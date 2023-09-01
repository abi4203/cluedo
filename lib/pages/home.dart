import 'package:cluedo/Components/navbar1.dart';
import 'package:cluedo/Components/showNameDialog.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: <Widget>[
            const NavBar1(),
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                mainAxisSize: MainAxisSize.min,
                // verticalDirection: VerticalDirection.up,
                children: [
                  RawMaterialButton(
                    onPressed: () => showNameDialog(context),
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
                    height: 20,
                  ),
                  ElevatedButton(
                    child: Text('Join Game'),
                    onPressed: () => showNameDialog(context),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
