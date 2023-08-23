import 'package:cluedo/Components/playingCard.dart';
import 'dart:math';
import 'package:flutter/material.dart';

class Test extends StatelessWidget {
  const Test({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          PageView(
            children: [
              PlayingCard(
                imageAsset: 'assets/Wrench.jpg',
                cardAsset: 'assets/wrench_card.svg',
              ),
              PlayingCard(
                imageAsset: 'assets/Wrench.jpg',
                cardAsset: 'assets/wrench_card.svg',
              ),
              PlayingCard(
                imageAsset: 'assets/Wrench.jpg',
                cardAsset: 'assets/wrench_card.svg',
              ),
              PlayingCard(
                imageAsset: 'assets/Wrench.jpg',
                cardAsset: 'assets/wrench_card.svg',
              ),
            ],
          ),
        ],
      ),
    );
  }
}


//SafeArea

//Gestuer Detector
//Inkwell

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

