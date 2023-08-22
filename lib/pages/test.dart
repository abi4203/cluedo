import 'package:cluedo/Components/menubar.dart';
import 'package:cluedo/Components/card.dart';
import 'package:cluedo/Components/take%20a%20guess.dart';
import 'package:cluedo/main.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

final String assetName = 'assets/rope_svg.svg';
final String pistol_svg = 'assets/pistol_svg.svg';

final Widget svg = SvgPicture.asset(assetName, semanticsLabel: 'Acme Logo');

final Widget pistol = SvgPicture.asset(
  pistol_svg,
);

class Main extends StatelessWidget {
  const Main({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            Expanded(child: Menubar()),
            SizedBox(height: 16),
            Expanded(child: Take_A_Guess_Button()),
            SizedBox(height: 16),
            Expanded(
              child: Grid(),
            ),
          ],
        ),
      ),
    );
  }
}

//SafeArea

//TextButton
//OutlinedButton
//ElevatedButton
//Icon(Icons.home)
//IconButton
//ElevatedButtonIcon
//Image.asset()
//Image(image: AssetImage())

//sized box {spacebetween  the widgets}
//Divider

//cross axis main axis
//row cloumn children
//Expand flex {like flex in css}
//grid
//ListView ListTitle
//GridView.Count cross axis.count

//Container and padding widget
//EdgeInsets.fromLTRB(10,10,10,10)

//circle avatar
//map .tolist
//App bar scroll
//silverAppbar
//Draggablescrollablesheet
// flow

//card inkWell

//flutter native app flash

//popmenu button
//Dialogue


