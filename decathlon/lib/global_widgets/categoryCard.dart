import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';

class CategoryCard extends StatelessWidget {
  String cateImage;
  String cateName;
  void Function()? onTap;
  CategoryCard({
    required this.cateImage,
    required this.cateName,
    this.onTap,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      child: InkWell(
        onTap: onTap,
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
              style: GoogleFonts.roboto(
                textStyle: TextStyle(fontSize: 10, fontWeight: FontWeight.w700),
              ),
              textAlign: TextAlign.center,
            )
          ],
        ),
      ),
    );
  }
}
