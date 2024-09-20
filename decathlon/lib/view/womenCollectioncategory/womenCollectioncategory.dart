import 'package:decathlon/utils/constants/color_constants.dart';
import 'package:flutter/material.dart';
import 'package:decathlon/dummy_db.dart';
import 'package:decathlon/view/categories/widgets/categoriesMainCard.dart';

class Womencollectioncategory extends StatefulWidget {
  const Womencollectioncategory({super.key});

  @override
  State<Womencollectioncategory> createState() =>
      _WomencollectioncategoryState();
}

class _WomencollectioncategoryState extends State<Womencollectioncategory> {
  ScrollController _scrollController = ScrollController();
  Color _topwearContainerColor = ColorConstants.MAIN_WHITE;
  Color _bottomwearContainerColor = ColorConstants.LIGHT_BLUE;
  Color _footwearContainerColor = ColorConstants.LIGHT_BLUE;
  Color _jacketsContainerColor = ColorConstants.LIGHT_BLUE;

  double sectionHeight = 200;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _scrollController.addListener(() {
      _handleScroll();
    });
  }

  void _handleScroll() {
    // If the scroll position is before the second section (Women)
    if (_scrollController.position.pixels < sectionHeight) {
      setState(() {
        _topwearContainerColor = ColorConstants.MAIN_WHITE; // Active color
        _bottomwearContainerColor = ColorConstants.LIGHT_BLUE;
        _footwearContainerColor = ColorConstants.LIGHT_BLUE;
        _jacketsContainerColor = ColorConstants.LIGHT_BLUE;
      });
    } else if (_scrollController.position.pixels < 2 * sectionHeight) {
      setState(() {
        _topwearContainerColor = ColorConstants.LIGHT_BLUE; // Active color
        _bottomwearContainerColor = ColorConstants.MAIN_WHITE;
        _footwearContainerColor = ColorConstants.LIGHT_BLUE;
        _jacketsContainerColor = ColorConstants.LIGHT_BLUE;
      });
    } else if (_scrollController.position.pixels < 3 * sectionHeight) {
      setState(() {
        _topwearContainerColor = ColorConstants.LIGHT_BLUE; // Active color
        _bottomwearContainerColor = ColorConstants.LIGHT_BLUE;
        _footwearContainerColor = ColorConstants.MAIN_WHITE;
        _jacketsContainerColor = ColorConstants.LIGHT_BLUE;
      });
    } else {
      setState(() {
        _topwearContainerColor = ColorConstants.LIGHT_BLUE; // Active color
        _bottomwearContainerColor = ColorConstants.LIGHT_BLUE;
        _footwearContainerColor = ColorConstants.LIGHT_BLUE;
        _jacketsContainerColor = ColorConstants.MAIN_WHITE;
      });
    }
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: ColorConstants.MAIN_WHITE,
        elevation: 1,
        shadowColor: ColorConstants.MAIN_BLACK,
        title: Text(
          "Women Collection",
          style: TextStyle(fontSize: 20, color: ColorConstants.DARK_GREY),
        ),
      ),
      body: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Column(
            children: [
              Container(
                width: 110,
                height: 450,
                child: Column(
                  children: [
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      height: 100,
                      width: 110,
                      decoration: BoxDecoration(color: _topwearContainerColor),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Container(
                            height: 55,
                            width: 55,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: NetworkImage(
                                      DummyDb.womenTopwearList[1]["image"]),
                                  fit: BoxFit.cover),
                            ),
                          ),
                          Text(
                            "Women\nTopwear",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                color: ColorConstants.DARK_GREY,
                                fontSize: 12,
                                fontWeight: FontWeight.w200),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 3,
                    ),
                    Container(
                      height: 100,
                      width: 110,
                      decoration: BoxDecoration(
                        color: _bottomwearContainerColor,
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Container(
                            height: 55,
                            width: 55,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: NetworkImage(
                                      DummyDb.womenFootwearList[3]["image"]),
                                  fit: BoxFit.cover),
                            ),
                          ),
                          Text(
                            "Women\nFootwear",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                color: ColorConstants.DARK_GREY,
                                fontSize: 12,
                                fontWeight: FontWeight.w200),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 3,
                    ),
                    Container(
                      height: 100,
                      width: 110,
                      decoration: BoxDecoration(
                        color: _footwearContainerColor,
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Container(
                            height: 55,
                            width: 55,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: NetworkImage(
                                      DummyDb.womenBottomwearList[0]["image"]),
                                  fit: BoxFit.cover),
                            ),
                          ),
                          Text(
                            "Women Bottomwear",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                color: ColorConstants.DARK_GREY,
                                fontSize: 12,
                                fontWeight: FontWeight.w200),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 3,
                    ),
                    Container(
                      height: 100,
                      width: 110,
                      decoration: BoxDecoration(
                        color: _jacketsContainerColor,
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Container(
                            height: 55,
                            width: 55,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: NetworkImage(
                                      DummyDb.womenJacketsList[2]["image"]),
                                  fit: BoxFit.cover),
                            ),
                          ),
                          Text(
                            "Women jackets &\nSweatshirts",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                color: ColorConstants.DARK_GREY,
                                fontSize: 12,
                                fontWeight: FontWeight.w200),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
          SizedBox(
            width: 20,
          ),
          SingleChildScrollView(
            controller: _scrollController,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    Text(
                      "Women Topwear",
                      style: TextStyle(
                          color: ColorConstants.MAIN_BLACK,
                          fontSize: 12,
                          fontWeight: FontWeight.bold),
                    ),
                    Container(
                      width: 130,
                      height: 1,
                      color: ColorConstants.GREY,
                      margin: EdgeInsets.symmetric(horizontal: 5),
                    )
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 10),
                  height: 340,
                  width: 220,
                  child: GridView.builder(
                      itemCount: 9,
                      shrinkWrap: true,
                      physics: NeverScrollableScrollPhysics(),
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisSpacing: 20,
                          childAspectRatio: 1 / 2,
                          crossAxisCount: 3),
                      itemBuilder: (context, index) => CategoriesMainCard(
                          cateImage: DummyDb.womenTopwearList[index]["image"],
                          cateName: DummyDb.womenTopwearList[index]
                              ["textData"])),
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    Text(
                      "Women Footwear",
                      style: TextStyle(
                          color: ColorConstants.MAIN_BLACK,
                          fontSize: 12,
                          fontWeight: FontWeight.bold),
                    ),
                    Container(
                      width: 120,
                      height: 1,
                      color: ColorConstants.GREY,
                      margin: EdgeInsets.symmetric(horizontal: 5),
                    )
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 10),
                  height: 340,
                  width: 220,
                  child: GridView.builder(
                      itemCount: 8,
                      shrinkWrap: true,
                      physics: NeverScrollableScrollPhysics(),
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisSpacing: 20,
                          childAspectRatio: 1 / 2,
                          crossAxisCount: 3),
                      itemBuilder: (context, index) => CategoriesMainCard(
                          cateImage: DummyDb.womenFootwearList[index]["image"],
                          cateName: DummyDb.womenFootwearList[index]
                              ["textData"])),
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    Text(
                      "Women Bottomwear",
                      style: TextStyle(
                          color: ColorConstants.MAIN_BLACK,
                          fontSize: 12,
                          fontWeight: FontWeight.bold),
                    ),
                    Container(
                      width: 120,
                      height: 1,
                      color: ColorConstants.GREY,
                      margin: EdgeInsets.symmetric(horizontal: 5),
                    )
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 10),
                  height: 230,
                  width: 220,
                  child: GridView.builder(
                      itemCount: 6,
                      shrinkWrap: true,
                      physics: NeverScrollableScrollPhysics(),
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisSpacing: 20,
                          childAspectRatio: 1 / 2,
                          crossAxisCount: 3),
                      itemBuilder: (context, index) => CategoriesMainCard(
                          cateImage: DummyDb.womenBottomwearList[index]
                              ["image"],
                          cateName: DummyDb.womenBottomwearList[index]
                              ["textData"])),
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    Text(
                      "Women Jackets",
                      style: TextStyle(
                          color: ColorConstants.MAIN_BLACK,
                          fontSize: 12,
                          fontWeight: FontWeight.bold),
                    ),
                    Container(
                      width: 120,
                      height: 1,
                      color: ColorConstants.GREY,
                      margin: EdgeInsets.symmetric(horizontal: 5),
                    )
                  ],
                ),
                SizedBox(height: 10),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 10),
                  height: 370,
                  width: 220,
                  child: GridView.builder(
                      itemCount: 7,
                      shrinkWrap: true,
                      physics: NeverScrollableScrollPhysics(),
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisSpacing: 20,
                          childAspectRatio: 1 / 2,
                          crossAxisCount: 3),
                      itemBuilder: (context, index) => CategoriesMainCard(
                          cateImage: DummyDb.womenJacketsList[index]["image"],
                          cateName: DummyDb.womenJacketsList[index]
                              ["textData"])),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
