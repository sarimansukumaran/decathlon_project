import 'package:decathlon/utils/constants/color_constants.dart';
import 'package:flutter/material.dart';

class CategoryCard extends StatelessWidget {
  String cateImage;
  String cateName;
  CategoryCard({
    required this.cateImage,
    required this.cateName,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            height: 100,
            decoration: BoxDecoration(
                image: DecorationImage(
              image: AssetImage(
                cateImage,
              ),
              fit: BoxFit.cover,
            )),
          ),
          Text(
            cateName,
            style: TextStyle(fontSize: 10, fontWeight: FontWeight.w700),
            textAlign: TextAlign.center,
          )
        ],
      ),
    );
  }
}
