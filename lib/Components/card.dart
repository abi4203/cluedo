import 'package:flutter/material.dart';

class MyCard extends StatelessWidget {
  final String imageAsset;
  final String title;

  const MyCard({
    Key? key,
    required this.imageAsset,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        Image.asset(
          imageAsset,
          width: 150,
          height: 100,
          fit: BoxFit.cover,
        ),
        Container(
          decoration: BoxDecoration(
            color: Colors.black.withOpacity(0.6),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            title,
            style: TextStyle(
              color: Colors.white,
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.center,
          ),
        ),
      ],
    );
  }
}

class Grid extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DraggableScrollableSheet(
      initialChildSize: 0.4, // Initial size when the sheet is collapsed
      maxChildSize: 1.0, // Maximum size the sheet can be expanded to
      builder: (context, scrollController) {
        return Container(
          color: Colors.grey[200],
          child: GridView.custom(
            controller: scrollController,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 16,
              mainAxisSpacing: 16,
            ),
            childrenDelegate: SliverChildListDelegate(
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
                MyCard(
                  imageAsset: 'assets/Lounge.jpg',
                  title: 'Card 4',
                ),
                // ... add more MyCard widgets ...
              ],
            ),
          ),
        );
      },
    );
  }
}
