import 'package:decathlon/utils/constants/color_constants.dart';
import 'package:flutter/material.dart';

class CategoriesMainCard extends StatelessWidget {
  CategoriesMainCard({
    required this.cateImage,
    required this.cateName,
    this.onTap,
    super.key,
  });
  String cateImage;
  String cateName;
  void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        height: 100,
        width: 80,
        child: Column(
          children: [
            Container(
              height: 65,
              width: 65,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: NetworkImage(cateImage), fit: BoxFit.cover)),
            ),
            Text(
              cateName,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.center,
              style: TextStyle(
                  color: ColorConstants.DARK_GREY,
                  fontSize: 12,
                  fontWeight: FontWeight.w200),
            )
          ],
        ),
      ),
    );
  }
}
