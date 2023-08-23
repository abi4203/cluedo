import 'package:flutter/material.dart';

class MenuIcon extends StatelessWidget {
  const MenuIcon({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: Icon(
        Icons.menu_sharp,
        color: Colors.white.withOpacity(0.8),
        size: 40,
        opticalSize: 30,
        grade: 200,
        weight: 700,
      ),
      onPressed: () {
        showMenu<String>(
          context: context,
          position: RelativeRect.fromDirectional(
              textDirection: TextDirection.ltr,
              start: 0.9,
              top: 0,
              end: 0.9,
              bottom: 0),
          // position: const RelativeRect.fromLTRB(10, 10, 80, 10),
          items: [
            const PopupMenuItem<String>(
              child: Text(
                'Home',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                  color: Color.fromARGB(255, 0, 0, 0),
                ),
              ),
              value: 'Home',
            ),
            const PopupMenuDivider(),
            const PopupMenuItem<String>(
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
            //  Navigator.pop(context);
            Navigator.restorablePopAndPushNamed(context, "/");
          } else if (selectedValue == 'How to play') {
            // Navigate to the How to Play screen
            Navigator.pushNamed(
                context, '/howToPlay'); 
          }
        });
      },
    );
  }
}
