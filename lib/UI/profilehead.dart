import 'package:flutter/material.dart';


class ImageSection extends StatelessWidget {
  const ImageSection({super.key, required this.image});

  final String image;

  @override
  Widget build(BuildContext context) {
    // #docregion Image-asset
    return Image.asset(
      image,
      scale: 3,
      fit: BoxFit.contain,
    );
    // #enddocregion Image-asset
  }
}

class TextSection extends StatelessWidget {
  const TextSection({
    super.key,
    required this.description1,
    required this.description2,
  });

  final String description1;
  final String description2;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
              description1,
              softWrap: true,
              textAlign: TextAlign.start,
              style: TextStyle(fontSize: 40)
          ),
          Text(
              description2,
              softWrap: true,
              textAlign: TextAlign.start,
              style: TextStyle(fontSize: 25)
          ),
        ],
      ),
    );
  }
}