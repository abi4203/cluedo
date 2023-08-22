import 'package:flutter/material.dart';

class Menu extends StatelessWidget {
  const Menu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: Icon(Icons.menu, color: Colors.white),
      onPressed: () {
        showMenu<String>(
          context: context,
          position: RelativeRect.fromLTRB(0, 0, 10, 0),
          items: [
            PopupMenuItem<String>(
              child: Text(
                'Home',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                  color: const Color.fromARGB(255, 0, 0, 0),
                ),
              ),
              value: 'Home',
            ),
            PopupMenuDivider(),
            PopupMenuItem<String>(
              child: Text(
                'How to play',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                  color: Colors.black,
                ),
              ),
              value: 'How to play',
            ),
          ],
        ).then((selectedValue) {
          if (selectedValue == 'Home') {
            Navigator.pushReplacementNamed(
                context, '/home'); // Replace with your route
          } else if (selectedValue == 'How to play') {
            // Navigate to the How to Play screen
            Navigator.pushReplacementNamed(
                context, '/how_to_play'); // Replace with your route
          }
        });
      },
    );
  }
}
