import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class PlayingCard extends StatelessWidget {
  final String imageAsset;
  final String cardAsset;

  const PlayingCard({
    Key? key,
    required this.imageAsset,
    required this.cardAsset,
    }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(10),
          child: Image(
            image: AssetImage(imageAsset),
            width: 150,
            height: 200,
            fit: BoxFit.cover,
            filterQuality: FilterQuality.high,
          ),
        ),
        SvgPicture.asset(cardAsset),
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
          ),
        )
      ],
    );
  }
}

class PlayingCardSlideView extends StatelessWidget {
const PlayingCardSlideView({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context){
    return Container(
        width: 160,
        height: 200,
        child: Stack(
          children: [
            PageView(
              children: [
                PlayingCard(
                  imageAsset: 'assets/Wrench.jpg',
                  cardAsset: 'assets/wrench_card.svg',
                ),
                PlayingCard(
                  imageAsset: 'assets/Wrench.jpg',
                  cardAsset: 'assets/wrench_card.svg',
                ),
                PlayingCard(
                  imageAsset: 'assets/Wrench.jpg',
                  cardAsset: 'assets/wrench_card.svg',
                ),
                PlayingCard(
                  imageAsset: 'assets/Wrench.jpg',
                  cardAsset: 'assets/wrench_card.svg',
                ),
              ],
            ),
          ],
        ),
      );
  }
}