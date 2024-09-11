import 'package:decathlon/utils/constants/color_constants.dart';
import 'package:flutter/material.dart';

class ExploreAllCard extends StatelessWidget {
  String exImage;
  String firstText;
  String secondText;
  String thirdText;
  ExploreAllCard({
    required this.exImage,
    required this.firstText,
    required this.secondText,
    required this.thirdText,
    super.key,
    required this.screenWidth,
  });

  final double screenWidth;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: 200,
          width: screenWidth, // Make each item fill the screen width
          margin: EdgeInsets.symmetric(vertical: 10),
          padding: EdgeInsets.all(10),
          decoration: BoxDecoration(
            image: DecorationImage(
              image: NetworkImage(exImage),
              fit: BoxFit.cover,
            ),
          ),
        ),
        Positioned(
          left: 0,
          top: 10,
          bottom: 10,
          child: Container(
            padding: EdgeInsets.symmetric(
              horizontal: 30,
            ),
            decoration: BoxDecoration(
                gradient: LinearGradient(
                    colors: [Colors.black, Colors.transparent],
                    begin: Alignment.centerLeft,
                    end: Alignment.centerRight)),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 20,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      firstText,
                      style: TextStyle(
                          color: ColorConstants.MAIN_WHITE,
                          fontWeight: FontWeight.bold,
                          fontSize: 10),
                    ),
                    Text(
                      secondText,
                      style: TextStyle(
                          color: ColorConstants.MAIN_WHITE,
                          fontWeight: FontWeight.bold,
                          fontSize: 20),
                    ),
                    Text(
                      thirdText,
                      style: TextStyle(
                          color: ColorConstants.MAIN_WHITE,
                          fontWeight: FontWeight.bold,
                          fontSize: 12),
                    ),
                  ],
                ),
                Container(
                  height: 20,
                  width: 90,
                  padding: EdgeInsets.symmetric(
                    vertical: 5,
                  ),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: ColorConstants.PRIMARY_COLOR),
                  child: Text(
                    "EXPLORE ALL",
                    style: TextStyle(
                        color: ColorConstants.MAIN_WHITE,
                        fontWeight: FontWeight.w800,
                        fontSize: 8),
                    textAlign: TextAlign.center,
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
              ],
            ),
          ),
        )
      ],
    );
  }
}
