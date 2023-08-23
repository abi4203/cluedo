import 'package:cluedo/Components/navbar1.dart';
import 'package:cluedo/Components/card.dart';
import 'package:cluedo/Components/guessButton.dart';
import 'package:cluedo/main.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

final String assetName = 'assets/rope_svg.svg';
final String pistol_svg = 'assets/pistol_svg.svg';

final Widget svg = SvgPicture.asset(assetName, semanticsLabel: 'Acme Logo');

final Widget pistol = SvgPicture.asset(
  pistol_svg,
);

class Test extends StatelessWidget {
  const Test({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          NavBar1(),
          
          MyCards(), 
      
          Center(
            child: GuessButton(),
          ),
        ],
      ),
    );
  }
}

//SafeArea

//Gestuer Detector
//INkwell

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

//RawMaterialButton
//postioned()
//stock button
//Snack bar

