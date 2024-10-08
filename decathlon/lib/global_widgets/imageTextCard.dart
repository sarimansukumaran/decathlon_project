import 'package:decathlon/utils/constants/color_constants.dart';
import 'package:flutter/material.dart';

class ImageTextCard extends StatelessWidget {
  String imageUrl;
  String textData;
  ImageTextCard({
    required this.imageUrl,
    required this.textData,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Container(
            height: 80,
            width: 75,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: NetworkImage(imageUrl), fit: BoxFit.cover)),
          ),
          Text(
            textData,
            style: TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: 10,
                color: ColorConstants.MAIN_BLACK),
          ),
        ],
      ),
    );
  }
}
