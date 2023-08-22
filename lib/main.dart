import 'package:cluedo/Components/card.dart';
import 'package:cluedo/Components/menu.dart';
import 'package:cluedo/Components/pause.dart';
import 'package:cluedo/pages/test.dart';
import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'Components/menubar.dart';

void main() {
  WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
  FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);
  runApp(
    MaterialApp(
      theme: ThemeData(
        colorSchemeSeed: const Color(0x3D2627),
        useMaterial3: true,

        scaffoldBackgroundColor: Colors.red[900],
        cardColor: const Color.fromARGB(255, 255, 255, 255),
        // color
        // shadowColor: Color(0x00ededed),
        splashColor: const Color(0x00ededed),
        fontFamily: 'Bouncy' 'Poppins',
      ),

      // home: const Game()  ,
      initialRoute: '/',
      routes: {
        '/': (context) => Grid(),
        '/second': (context) => const SecondScreen(),
      },
    ),
  );
  FlutterNativeSplash.remove();
}

class Game extends StatelessWidget {
  const Game({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            children: <Widget>[
              Menubar(),
              // Main(),
              RawMaterialButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/second');
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
              JoinButton(),
            ],
          ),
        ),
      ),
    );
  }
}

class JoinButton extends StatelessWidget {
  const JoinButton({super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        Navigator.pushNamed(context, '/second');
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

class SecondScreen extends StatelessWidget {
  const SecondScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: const Text('Go back!'),
        ),
      ),
    );
  }
}
