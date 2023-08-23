import 'package:flutter/material.dart';

class JoinButton extends StatelessWidget {
  const JoinButton({super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all<Color>(Color(0xA6FFFFFF)),

        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
          RoundedRectangleBorder(
            borderRadius:
                BorderRadius.circular(10.0), // Adjust the border radius here
          ),
        ),
      ),
      onPressed: () {
        Navigator.pushNamed(context, '/game');
      },
      child: Text.rich(
        TextSpan(
          style: TextStyle(
            fontSize: 30,
            fontFamily: 'Bouncy',
            letterSpacing: 4.50,
          ),
          children: [
            TextSpan(
              text: 'J',
              style: TextStyle(
                color: Color(0xFFF2142B),
              ),
            ),
            TextSpan(
              text: 'oin ',
              style: TextStyle(
                color: Colors.white,
              ),
            ),
            TextSpan(
              text: 'G',
              style: TextStyle(
                color: Color(0xFFF2142B),
              ),
            ),
            TextSpan(
              text: 'ame',
              style: TextStyle(
                color: Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
