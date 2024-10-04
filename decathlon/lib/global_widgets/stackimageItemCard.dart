import 'package:flutter/widgets.dart';
import 'package:flutter/material.dart';
import 'package:decathlon/utils/constants/color_constants.dart';

class Stackimageitemcard extends StatelessWidget {
  String firstImage;
  String secondImage;
  Stackimageitemcard({required this.firstImage, required this.secondImage});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 10),
      child: Stack(
        children: [
          Container(
            padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
            height: 180,
          ),
          Positioned(
              left: 0,
              right: 0,
              bottom: 10,
              child: Container(
                color: ColorConstants.green_bg,
                height: 90,
                child: Padding(
                  padding: const EdgeInsets.only(left: 3),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Online\nExclusive",
                        style: TextStyle(
                          color: ColorConstants.PRIMARY_COLOR,
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                        ),
                        textAlign: TextAlign.center,
                      ),
                      Text(
                        "800+ Products Only\nAvailable Online",
                        style: TextStyle(
                          color: ColorConstants.PRIMARY_COLOR,
                          fontWeight: FontWeight.w600,
                          fontSize: 9,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                ),
              )),
          Positioned(
              bottom: 10,
              top: 0,
              left: 170,
              child: Container(
                width: 180,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: NetworkImage(firstImage), fit: BoxFit.cover)),
              )),
          Positioned(
              bottom: 0,
              left: 100,
              child: Container(
                width: 120,
                height: 120,
                decoration: BoxDecoration(
                    border: Border(
                        top: BorderSide(
                            width: 4, color: ColorConstants.MAIN_WHITE),
                        right: BorderSide(
                            width: 4, color: ColorConstants.MAIN_WHITE)),
                    image: DecorationImage(
                        image: NetworkImage(secondImage), fit: BoxFit.cover)),
              )),
          Positioned(
              right: 4,
              top: 110,
              child: CircleAvatar(
                radius: 10,
                backgroundColor: Colors.white,
                child: Icon(
                  Icons.arrow_forward,
                  color: ColorConstants.PRIMARY_COLOR,
                  size: 14,
                ),
              ))
        ],
      ),
    );
  }
}
