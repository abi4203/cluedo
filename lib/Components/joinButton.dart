import 'package:flutter/material.dart';

class JoinButton extends StatelessWidget {
  const JoinButton({super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        Navigator.pushNamed(context, '/game');
      },
      child: Text.rich(
        TextSpan(
          style: TextStyle(
            fontSize: 30,
            fontFamily: 'Bouncy',
            // fontWeight: FontWeight.w900,
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
