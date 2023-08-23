import 'package:cluedo/Components/card.dart';
import 'package:flutter/material.dart';

class ScrollPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DraggableScrollableSheet(
      initialChildSize: 0.4,
      minChildSize: 0.1,
      maxChildSize: 1.0,
      builder: (context, scrollController) {
        return ClipRRect(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20),
            topRight: Radius.circular(20),
          ),
          child: Container(
            color: Colors.white,
            child: CustomScrollView(
              controller: scrollController,
              slivers: [
                //PEOPLE
                SliverToBoxAdapter(
                  child: Card(
                    elevation: 0,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(10),
                        topRight: Radius.circular(10),
                      ),
                    ),
                    color: Color(0x979797).withAlpha(100),
                    child: Padding(
                      padding: EdgeInsets.all(10.0),
                      child: Text('PEOPLE'),
                    ),
                  ),
                ),
                SliverGrid(
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    // crossAxisSpacing: 10,
                    // mainAxisSpacing: 10,
                    mainAxisExtent: 100,
                  ),
                  delegate: SliverChildListDelegate(
                    [
                      MyCard(
                        imageAsset: 'assets/Lounge.jpg',
                        title: 'Card 4',
                      ),
                      MyCard(
                        imageAsset: 'assets/Lounge.jpg',
                        title: 'Card 4',
                      ),
                      MyCard(
                        imageAsset: 'assets/Lounge.jpg',
                        title: 'Card 4',
                      ),
                      MyCard(
                        imageAsset: 'assets/Lounge.jpg',
                        title: 'Card 4',
                      ),
                      MyCard(
                        imageAsset: 'assets/Lounge.jpg',
                        title: 'Card 4',
                      ),
                      MyCard(
                        imageAsset: 'assets/Lounge.jpg',
                        title: 'Card 4',
                      ),
                    ],
                  ),
                ),
                //WEAPONS
                SliverList(
                  delegate: SliverChildListDelegate(
                    [
                      Card(
                        elevation: 0,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(10),
                            topRight: Radius.circular(10),
                          ),
                        ),
                        color: Color(0x979797).withAlpha(100),
                        child: Padding(
                          padding: EdgeInsets.all(10.0),
                          child: Text('WEAPONS'),
                        ),
                      )
                    ],
                  ),
                ),
                SliverGrid(
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    // crossAxisSpacing: 10,
                    // mainAxisSpacing: 10,
                    mainAxisExtent: 100,
                  ),
                  delegate: SliverChildListDelegate(
                    [
                      MyCard(
                        imageAsset: 'assets/Lounge.jpg',
                        title: 'Card 4',
                      ),
                      MyCard(
                        imageAsset: 'assets/Lounge.jpg',
                        title: 'Card 4',
                      ),
                      MyCard(
                        imageAsset: 'assets/Lounge.jpg',
                        title: 'Card 4',
                      ),
                      MyCard(
                        imageAsset: 'assets/Lounge.jpg',
                        title: 'Card 4',
                      ),
                      MyCard(
                        imageAsset: 'assets/Lounge.jpg',
                        title: 'Card 4',
                      ),
                      MyCard(
                        imageAsset: 'assets/Lounge.jpg',
                        title: 'Card 4',
                      ),
                    ],
                  ),
                ),

                //ROOMS
                SliverList(
                  delegate: SliverChildListDelegate(
                    [
                      Card(
                        elevation:
                            0, // Set the elevation to 0 to remove the shadow
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(10),
                            topRight: Radius.circular(10),
                          ),
                        ),
                        color: Color(0x979797).withAlpha(100),
                        child: Padding(
                          padding: EdgeInsets.all(10.0),
                          child: Text('ROOMS'),
                        ),
                      )
                    ],
                  ),
                ),
                SliverGrid(
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    // crossAxisSpacing: 10,
                    // mainAxisSpacing: 10,
                    mainAxisExtent: 100,
                  ),
                  delegate: SliverChildListDelegate(
                    [
                      MyCard(
                        imageAsset: 'assets/Lounge.jpg',
                        title: 'Card 4',
                      ),
                      MyCard(
                        imageAsset: 'assets/Lounge.jpg',
                        title: 'Card 4',
                      ),
                      MyCard(
                        imageAsset: 'assets/Lounge.jpg',
                        title: 'Card 4',
                      ),
                      MyCard(
                        imageAsset: 'assets/Lounge.jpg',
                        title: 'Card 4',
                      ),
                      MyCard(
                        imageAsset: 'assets/Lounge.jpg',
                        title: 'Card 4',
                      ),
                      MyCard(
                        imageAsset: 'assets/Lounge.jpg',
                        title: 'Card 4',
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
