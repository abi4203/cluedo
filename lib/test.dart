import 'package:flutter/material.dart';


class Main extends StatefulWidget {
  const Main({Key? key}) : super(key: key);

  @override
  State<Main> createState() => _MainState();
}

class _MainState extends State<Main> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Cluedo.clue'),
      ),
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            // crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              
              Container(
                padding: EdgeInsets.fromLTRB(50, 10, 50, 10),
                color: Colors.blueAccent,
                child: Text('add'),
              ),
              TextButton(onPressed: () {}, child: const Text('hi')),

              const Icon(Icons.play_circle_filled_rounded,
                  size: 170, color: Color.fromARGB(255, 255, 82, 82)),

              // Image.asset('assets/billiard.jpg'),

              const Image(image: AssetImage('assets/Cluedo-logo.png')),
              const Spacer(),
              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue,
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                child: const Text(
                  "Join Game",
                  style: TextStyle(
                    fontFamily: 'Bouncy',
                    letterSpacing: 4.50,
                    fontWeight: FontWeight.w900,
                    fontSize: 30,
                    color: Colors.white,
                  ),
                ),
              ),

              const Divider(
                height: 10,
                color: Colors.blueAccent,
              ),
              IconButton(
                  onPressed: () {}, icon: const Icon(Icons.notifications)),
              const Card(
                color: Colors.amberAccent,
                child: ListTile(
                  title: Text('data'),
                ),
                // child: SizedBox(
                //   width: 300,
                //   height: 100,
                //   child: Center(child: Text('abi')),
                // ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('DraggableScrollableSheet'),
      ),
      body: SizedBox.expand(
        child: DraggableScrollableSheet(
          initialChildSize: 0.5,
          maxChildSize: 1.0,
          minChildSize: 0.4,
          builder: (BuildContext context, ScrollController scrollController) {
            return Container(
              color: Colors.blue[100],
              child: ListView.builder(
                // controller: scrollController,
                itemCount: 25,
                itemBuilder: (BuildContext context, int index) {
                  return ListTile(title: Text('Item $index'));
                },
              ),
            );
          },
        ),
      ),
    );
  }
}
//SafeArea

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

//ListView ListTitle
//GridView.Count cross axis.count

//Container and padding widget
//EdgeInsets.fromLTRB(10,10,10,10)

//circle avatar
//map .tolist
//silverAppbar
//Draggablescrollablesheet
// flow

//card inkWell

//flutter native app flash