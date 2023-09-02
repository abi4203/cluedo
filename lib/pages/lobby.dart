import 'package:cluedo/Components/navbar1.dart';
import 'package:cluedo/Components/readyButton.dart';
import 'package:flutter/material.dart';

class Lobby extends StatefulWidget {
  const Lobby({Key? key}) : super(key: key);

  @override
  State<Lobby> createState() => _LobbyState();
}

class _LobbyState extends State<Lobby> {
  bool _lobbyReady = false;

  String _errorMessage = '';
  @override
  Widget build(BuildContext context) {
    final String _username =
        ModalRoute.of(context)!.settings.arguments as String;

    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: <Widget>[
            NavBar1(),
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: 300,
                    height: 470,
                    decoration: BoxDecoration(
                      color: Color.fromARGB(255, 34, 34, 34),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: ListView(
                      padding: EdgeInsets.all(30),
                      children: <Widget>[
                        _username.isNotEmpty
                            ? Container(
                                width: 240,
                                height: 50,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.white54,
                                      offset: Offset(5, 5),
                                      blurRadius: 0,
                                      spreadRadius: 0,
                                      blurStyle: BlurStyle.solid,
                                    ),
                                  ],
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  verticalDirection: VerticalDirection.up,
                                  children: [
                                    Icon(
                                      Icons.person,
                                      color: Colors.black54,
                                    ),
                                    Text(_username),
                                    ReadyButton(
                                      onReadyChanged: (bool _ready) {
                                        setState(() {
                                          _lobbyReady = _ready;
                                        });
                                      },
                                    ),
                                    // subtitle: Text('sub-tiitle'),
                                  ],
                                ),
                              )
                            : Container(
                                width: 240,
                                height: 50,
                                decoration: BoxDecoration(
                                  color: Colors.grey,
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.white24,
                                      offset: Offset(5, 5),
                                      blurRadius: 0,
                                      spreadRadius: 0,
                                      blurStyle: BlurStyle.solid,
                                    ),
                                  ],
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: Container(),
                              ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  FilledButton(
                    child: Text('START GAME'),
                    onPressed: () {
                      if (_lobbyReady) {
                        Navigator.pushNamed(context, '/game');
                      } else {
                        Tooltip(
                          child: Text('not ready'),
                        );
                        // ScaffoldMessenger.of(context).showSnackBar(
                        //   const SnackBar(
                        //     content: Text('Tap'),
                        //     showCloseIcon: true,
                        //     // width: 100,
                        //   ),
                        // );
                      }
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
