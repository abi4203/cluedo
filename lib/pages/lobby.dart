import 'package:flutter/material.dart';

class Lobby extends StatefulWidget {
  const Lobby({super.key});

  @override
  State<Lobby> createState() => _LobbyState();
}

class _LobbyState extends State<Lobby> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: 300,
        height: 470,
        decoration: BoxDecoration(
          color: Color.fromARGB(255, 34, 34, 34),
          borderRadius: BorderRadius.circular(20),
        ),
        child: ListView(
          padding: EdgeInsets.all(30),
          children: <Widget>[
            const SizedBox(
              height: 20,
            ),
            Container(
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
              child: const ListTile(
                leading: Icon(
                  Icons.person,
                  color: Colors.black54,
                ),
                title: Text('Abishek'),
                // subtitle: Text('sub-tiitle'),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              child: const ListTile(
                leading: Icon(Icons.person),
                title: Text('Album'),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
          ],
        ),
      ),
    );
  }
}
