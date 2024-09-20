import 'package:decathlon/dummy_db.dart';
import 'package:decathlon/utils/constants/color_constants.dart';
import 'package:decathlon/view/categories/widgets/categoriesMainCard.dart';
import 'package:decathlon/view/menCollectionCategory/menCollectionCategory.dart';
import 'package:decathlon/view/womenCollectioncategory/womenCollectioncategory.dart';
import 'package:flutter/material.dart';

class Categories extends StatelessWidget {
  const Categories({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: ColorConstants.MAIN_WHITE,
        elevation: 1,
        shadowColor: ColorConstants.MAIN_BLACK,
        title: Text(
          "Categories",
          style: TextStyle(fontSize: 20, color: ColorConstants.DARK_GREY),
        ),
      ),
      body: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _buildleftSideSection(context),
          SizedBox(
            width: 20,
          ),
          SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 8,
                ),
                Text(
                  "ALL SPORTS",
                  style: TextStyle(
                      color: ColorConstants.DARK_GREY,
                      fontSize: 10,
                      fontWeight: FontWeight.w600),
                ),
                SizedBox(
                  height: 20,
                ),
                _buildOutdoorSportsTitleSection(),
                SizedBox(
                  height: 20,
                ),
                _buildOutdoorSportsListSection(),
                SizedBox(
                  height: 20,
                ),
                _buildFitnessAndYogaTitleSection(),
                SizedBox(
                  height: 20,
                ),
                _buildFitnessAndYogaListSection(),
                SizedBox(
                  height: 20,
                ),
                _buildWaterSportsTileSection(),
                SizedBox(
                  height: 20,
                ),
                _buildWaterSportsTitleSection(),
              ],
            ),
          )
        ],
      ),
    );
  }

  Container _buildWaterSportsTitleSection() {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 10),
      height: 200,
      width: 220,
      child: GridView.builder(
          itemCount: 5,
          shrinkWrap: true,
          physics: NeverScrollableScrollPhysics(),
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisSpacing: 20, childAspectRatio: 1 / 2, crossAxisCount: 3),
          itemBuilder: (context, index) => CategoriesMainCard(
              cateImage: DummyDb.waterSportsList[index]["image"],
              cateName: DummyDb.waterSportsList[index]["textData"])),
    );
  }

  Row _buildWaterSportsTileSection() {
    return Row(
      children: [
        Text(
          "Water Sports",
          style: TextStyle(
              color: ColorConstants.MAIN_BLACK,
              fontSize: 12,
              fontWeight: FontWeight.bold),
        ),
        Container(
          width: 130,
          height: 1,
          margin: EdgeInsets.symmetric(horizontal: 5),
          color: ColorConstants.GREY,
        )
      ],
    );
  }

  Container _buildFitnessAndYogaListSection() {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 10),
      height: 200,
      width: 220,
      child: GridView.builder(
          itemCount: 5,
          shrinkWrap: true,
          physics: NeverScrollableScrollPhysics(),
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisSpacing: 20, childAspectRatio: 1 / 2, crossAxisCount: 3),
          itemBuilder: (context, index) => CategoriesMainCard(
              cateImage: DummyDb.fitnessSportsYogaList[index]["image"],
              cateName: DummyDb.fitnessSportsYogaList[index]["textData"])),
    );
  }

  Row _buildFitnessAndYogaTitleSection() {
    return Row(
      children: [
        Text(
          "Fitness Sports & Yoga",
          style: TextStyle(
              color: ColorConstants.MAIN_BLACK,
              fontSize: 12,
              fontWeight: FontWeight.bold),
        ),
        Container(
          width: 110,
          height: 1,
          margin: EdgeInsets.symmetric(horizontal: 5),
          color: ColorConstants.GREY,
        )
      ],
    );
  }

  Row _buildOutdoorSportsTitleSection() {
    return Row(
      children: [
        Text(
          "Outdoor Sports",
          style: TextStyle(
              color: ColorConstants.MAIN_BLACK,
              fontSize: 12,
              fontWeight: FontWeight.bold),
        ),
        Container(
          width: 150,
          height: 1,
          color: ColorConstants.GREY,
          margin: EdgeInsets.symmetric(horizontal: 5),
        )
      ],
    );
  }

  Container _buildOutdoorSportsListSection() {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 10),
      height: 300,
      width: 220,
      child: GridView.builder(
          itemCount: 7,
          shrinkWrap: true,
          physics: NeverScrollableScrollPhysics(),
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisSpacing: 20, childAspectRatio: 1 / 2, crossAxisCount: 3),
          itemBuilder: (context, index) => CategoriesMainCard(
              cateImage: DummyDb.outdoorSportsCategoryList[index]["image"],
              cateName: DummyDb.outdoorSportsCategoryList[index]["textData"])),
    );
  }

  Container _buildleftSideSection(context) {
    return Container(
      width: 110,
      height: 410,
      // color: Colors.black,
      child: Column(
        children: [
          Container(
            height: 55,
            margin: EdgeInsets.symmetric(horizontal: 20, vertical: 7),
            //color: Colors.white,
            child: Column(
              children: [
                Container(
                  height: 40,
                  width: 45,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      image: DecorationImage(
                          image: NetworkImage(
                            "https://images.pexels.com/photos/5986316/pexels-photo-5986316.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
                          ),
                          fit: BoxFit.cover)),
                ),
                SizedBox(
                  height: 2,
                ),
                Text(
                  "All Sports",
                  style: TextStyle(fontSize: 8, fontWeight: FontWeight.w600),
                )
              ],
            ),
          ),
          SizedBox(
            height: 10,
          ),
          InkWell(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => Mencollectioncategory()));
            },
            child: Container(
              height: 100,
              width: 110,
              decoration: BoxDecoration(
                color: ColorConstants.LIGHT_BLUE,
                // border: Border(
                //     top: BorderSide(
                //         color: ColorConstants.PRIMARY_COLOR, width: 1)
                //         ),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    height: 65,
                    width: 65,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                          image:
                              AssetImage(DummyDb.homeFirstCategory[0]["image"]),
                          fit: BoxFit.cover),
                    ),
                  ),
                  Text(
                    "Men Collection",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: ColorConstants.DARK_GREY,
                        fontSize: 12,
                        fontWeight: FontWeight.w200),
                  ),
                ],
              ),
            ),
          ),
          InkWell(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => Womencollectioncategory()));
            },
            child: Container(
              margin: EdgeInsets.symmetric(vertical: 2),
              height: 120,
              width: 110,
              decoration: BoxDecoration(
                color: ColorConstants.LIGHT_BLUE,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    height: 65,
                    width: 65,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                          image:
                              AssetImage(DummyDb.homeFirstCategory[1]["image"]),
                          fit: BoxFit.cover),
                    ),
                  ),
                  Text(
                    "Women\nCollection",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: ColorConstants.DARK_GREY,
                        fontSize: 12,
                        fontWeight: FontWeight.w200),
                  ),
                ],
              ),
            ),
          ),
          Container(
            height: 45,
            width: 110,
            decoration: BoxDecoration(
              color: ColorConstants.LIGHT_BLUE,
            ),
            child: Center(
              child: Text(
                "Support",
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: ColorConstants.DARK_GREY,
                    fontSize: 12,
                    fontWeight: FontWeight.w200),
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(vertical: 2),
            height: 55,
            width: 110,
            decoration: BoxDecoration(
              color: ColorConstants.LIGHT_BLUE,
            ),
            child: Center(
              child: Text(
                "Decathlon\nStores",
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: ColorConstants.DARK_GREY,
                    fontSize: 12,
                    fontWeight: FontWeight.w200),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
