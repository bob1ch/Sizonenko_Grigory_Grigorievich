import 'package:flutter/material.dart';
import 'package:ex2/generated/locale_keys.g.dart';
import 'package:ex2/generated/codegen_loader.g.dart';
import 'package:easy_localization/easy_localization.dart';


class ImageSection extends StatelessWidget {
  const ImageSection({super.key, required this.image});

  final String image;

  @override
  Widget build(BuildContext context) {
    // #docregion Image-asset
    //return Image.asset(
    //  image,
    //  scale: 3,
    //  fit: BoxFit.contain,
    //);
    return CircleAvatar(
      radius: 60,
      backgroundColor: Colors.black,
      child: Padding(
        padding: const EdgeInsets.all(4), // Border radius
        child: ClipOval(child: Image.asset(image)),
      ),
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
    return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Text(
                  LocaleKeys.name.tr(),
                  textAlign: TextAlign.start,
                  style: TextStyle(fontSize: 40)
              ),
              Text(
                  description1,
                  softWrap: true,
                  textAlign: TextAlign.start,
                  style: TextStyle(fontSize: 40)
              ),
            ],
          ),
          Row(
            children: [
              Text(
                  LocaleKeys.status.tr(),
                  softWrap: true,
                  textAlign: TextAlign.start,
                  style: TextStyle(fontSize: 25)
              ),
              Text(
                  description2,
                  softWrap: true,
                  textAlign: TextAlign.start,
                  style: TextStyle(fontSize: 25)
              ),
            ],
          ),
        ],
      );
  }
}