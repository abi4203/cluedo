import 'dart:ui';

import 'package:flutter/material.dart';

class MyCard extends StatefulWidget {
  final String imageAsset;
  final String title;

  const MyCard({
    Key? key,
    required this.imageAsset,
    required this.title,
  }) : super(key: key);

  @override
  _MyCardState createState() => _MyCardState();
}

class _MyCardState extends State<MyCard> {
  bool isCrossVisible = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          isCrossVisible = true;
        });
      },
      onTapCancel: () {
        setState(() {
          isCrossVisible = false;
        });
      },
      child: Stack(
        alignment: Alignment.center,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Image.asset(
              widget.imageAsset,
              width: 150,
              height: 80,
              fit: BoxFit.cover,
              filterQuality: FilterQuality.high,
            ),
          ),
          Container(
            width: 150,
            height: 80,
            decoration: BoxDecoration(
              color: Colors.black.withOpacity(0.5),
              borderRadius: BorderRadius.circular(10),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              widget.title,
              style: TextStyle(
                color: Colors.white,
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
          ),
          if (isCrossVisible)
            Positioned(
             
              top:-13,
              child: IconButton(
                onPressed: () {
                  setState(() {
                    isCrossVisible = false;
                  });
                },
                icon: Icon(
                  Icons.close_rounded,
                  color: Color.fromARGB(255, 214, 14, 14),
                  // size: 110,
                ),
                hoverColor: Color.fromARGB(0, 255, 255, 255),
                iconSize: 110,
                // alignment: Alignment.topLeft,
                // visualDensity: VisualDensity(horizontal: -4,vertical:- 4),
                // padding: EdgeInsets.all(10.0),
              ),
            ),
        ],
      ),
    );
  }
}
