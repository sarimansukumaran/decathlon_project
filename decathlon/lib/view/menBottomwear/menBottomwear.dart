import 'package:flutter/material.dart';
import 'package:decathlon/dummy_db.dart';
import 'package:decathlon/global_widgets/mainItemContainerCard.dart';
import 'package:decathlon/utils/constants/color_constants.dart';

class MenBottomwear extends StatelessWidget {
  MenBottomwear({required this.title, super.key});
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
              width: 10,
            ),
          ],
        ),
        body: SingleChildScrollView(
          child: GridView.builder(
              shrinkWrap: true,
              itemCount: DummyDb.menBottomwearDetailedList.length,
              physics: NeverScrollableScrollPhysics(),
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2, childAspectRatio: 2 / 3),
              itemBuilder: (context, index) => MainItemContainerCard(
                    haveYellowbox: false,
                    itemimage: DummyDb.menBottomwearDetailedList[index]
                        ["image"],
                    itemRating: DummyDb.menBottomwearDetailedList[index]
                        ["rating"],
                    itemname: DummyDb.menBottomwearDetailedList[index]["name"],
                    itemDetail: DummyDb.menBottomwearDetailedList[index]
                        ["details"],
                    itemPrice: DummyDb.menBottomwearDetailedList[index]
                        ["price"],
                  )),
        ));
  }
}
