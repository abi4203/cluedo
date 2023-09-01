import 'package:cluedo/Components/card.dart';
import 'package:cluedo/Components/menuIcon.dart';
import 'package:cluedo/Components/pauseIcon.dart';
import 'package:cluedo/Components/guessButton.dart';
import 'package:cluedo/Components/playingCard.dart';
import 'package:cluedo/pages/game.dart';
import 'package:cluedo/pages/home.dart';
import 'package:cluedo/pages/howToPlay.dart';
import 'package:cluedo/pages/lobby.dart';
import 'package:cluedo/pages/test.dart';
import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'Components/navbar1.dart';

void main() {
  WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
  FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);
  runApp(
    MaterialApp(
      theme: ThemeData(
        // colorSchemeSeed: const Color(0x3D2627),
        useMaterial3: true,

        scaffoldBackgroundColor: Colors.red[900],
        // cardColor: const Color.fromARGB(255, 255, 255, 255),
        // splashColor: Color.fromARGB(255, 237, 237, 237),
        // hoverColor: Color.fromARGB(179, 163, 163, 163),
        
        fontFamily: 'Bouncy' 'Poppins',
      ),

      // home: const Game()  ,
      initialRoute: '/',
      routes: {
        '/': (context) => Home(),
        '/lobby':(context) => const Lobby(),
        '/game': (context) => const SecondScreen(),
        '/howToPlay':(context) => const HowToPlay(),
        '/test':(context) => Test(),
      },
    ),
  );
  FlutterNativeSplash.remove();
}

