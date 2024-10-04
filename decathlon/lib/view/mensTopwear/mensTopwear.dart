import 'package:decathlon/dummy_db.dart';
import 'package:decathlon/global_widgets/mainItemContainerCard.dart';
import 'package:decathlon/global_widgets/stackimageItemCard.dart';
import 'package:decathlon/utils/constants/color_constants.dart';
import 'package:flutter/material.dart';

class MensTopwear extends StatelessWidget {
  MensTopwear({this.title = "Men Collection", super.key});
  String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            title,
            style: TextStyle(
                color: ColorConstants.MAIN_BLACK,
                fontWeight: FontWeight.bold,
                fontSize: 19),
            textAlign: TextAlign.center,
          ),
          actions: [
            Icon(
              Icons.search_outlined,
              color: ColorConstants.MAIN_BLACK,
              weight: 50,
            ),
            SizedBox(
              width: 5,
            ),
            Icon(
              Icons.favorite_outline,
              color: ColorConstants.MAIN_BLACK,
              weight: 50,
            ),
            SizedBox(
              width: 5,
            ),
            Icon(
              Icons.shopping_cart_outlined,
              color: ColorConstants.MAIN_BLACK,
              weight: 50,
            ),
            SizedBox(
              width: 14,
            ),
          ],
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Stackimageitemcard(
                  firstImage: DummyDb.mainItemContainerList[0]["image"],
                  secondImage: DummyDb.imageAndTextListTwo[0]["image"]),
              GridView.builder(
                  shrinkWrap: true,
                  itemCount: DummyDb.menTopwearDetailedList.length,
                  physics: NeverScrollableScrollPhysics(),
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2, childAspectRatio: 2 / 3),
                  itemBuilder: (context, index) => MainItemContainerCard(
                        haveYellowbox: false,
                        itemimage: DummyDb.menTopwearDetailedList[index]
                            ["image"],
                        itemRating: DummyDb.menTopwearDetailedList[index]
                            ["rating"],
                        itemname: DummyDb.menTopwearDetailedList[index]["name"],
                        itemDetail: DummyDb.menTopwearDetailedList[index]
                            ["details"],
                        itemPrice: DummyDb.menTopwearDetailedList[index]
                            ["price"],
                      )),
            ],
          ),
        ));
  }
}
