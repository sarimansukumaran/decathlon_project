import 'package:decathlon/utils/constants/color_constants.dart';

import 'package:flutter/material.dart';

class MainItemContainerCard extends StatelessWidget {
  MainItemContainerCard({
    required this.itemimage,
    required this.itemRating,
    required this.itemname,
    required this.itemDetail,
    required this.itemPrice,
    this.haveYellowbox = true,
    this.yellowBoxText,
    super.key,
  });
  String itemimage;
  String itemRating;
  String itemname;
  String itemDetail;
  String itemPrice;
  final bool haveYellowbox;
  String? yellowBoxText;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          border: Border.all(width: .5, color: ColorConstants.GREY)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            children: [
              Container(
                height: 180,
                width: 186,
                decoration: BoxDecoration(
                  image: DecorationImage(
                      image: NetworkImage(itemimage), fit: BoxFit.cover),
                ),
              ),
              haveYellowbox
                  ? Positioned(
                      top: 0,
                      left: 0,
                      child: Container(
                        height: 14,
                        padding:
                            EdgeInsets.symmetric(horizontal: 3, vertical: .5),
                        color: ColorConstants.BASIC_YELLOW,
                        child: Text(
                          yellowBoxText.toString(),
                          style: TextStyle(fontSize: 9),
                        ),
                      ))
                  : SizedBox(),
              Positioned(
                  left: 5,
                  bottom: 10,
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 1, vertical: .5),
                    decoration: BoxDecoration(
                        color: ColorConstants.TRASPARENT.withOpacity(.05),
                        border:
                            Border.all(width: 1.5, color: ColorConstants.GREY)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Icon(
                          Icons.star,
                          color: ColorConstants.MAIN_BLACK,
                          size: 12,
                        ),
                        Text(
                          itemRating,
                          style: TextStyle(
                              color: ColorConstants.PRIMARY_COLOR,
                              fontSize: 10,
                              fontWeight: FontWeight.w300),
                        ),
                      ],
                    ),
                  )),
              Positioned(
                  bottom: 10,
                  right: 5,
                  child: Container(
                    //padding: EdgeInsets.all(.015),
                    height: 20,
                    width: 20,
                    decoration: BoxDecoration(
                        color: ColorConstants.TRASPARENT.withOpacity(.05),
                        border:
                            Border.all(width: 1, color: ColorConstants.GREY),
                        shape: BoxShape.circle),
                    child: Center(
                        child: Icon(
                      Icons.favorite_border_outlined,
                      color: ColorConstants.PRIMARY_COLOR,
                      size: 13,
                    )),
                  ))
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(left: 5),
            child: Text(
              itemname,
              style: TextStyle(fontSize: 12, fontWeight: FontWeight.w900),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 5, right: 5),
            child: Text(
              itemDetail,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(fontSize: 12, fontWeight: FontWeight.normal),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 5, right: 5),
            child: Text(
              itemPrice,
              style: TextStyle(fontSize: 10, fontWeight: FontWeight.w900),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            margin: EdgeInsets.symmetric(vertical: 5, horizontal: 5),
            padding: EdgeInsets.symmetric(vertical: 3, horizontal: 5),
            height: 30,
            width: 175,
            decoration: BoxDecoration(
                border: Border.all(
                    width: 2,
                    color: ColorConstants.GREY,
                    style: BorderStyle.solid)),
            child: Center(
              child: Text(
                "ADD TO CART",
                style: TextStyle(fontWeight: FontWeight.w400, fontSize: 15),
              ),
            ),
          )
        ],
      ),
    );
  }
}
