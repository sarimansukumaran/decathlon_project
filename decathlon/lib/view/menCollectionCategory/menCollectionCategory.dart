import 'package:decathlon/dummy_db.dart';
import 'package:decathlon/utils/constants/color_constants.dart';
import 'package:decathlon/view/categories/widgets/categoriesMainCard.dart';
import 'package:decathlon/view/menBottomwear/menBottomwear.dart';
import 'package:decathlon/view/mensTopwear/mensTopwear.dart';
import 'package:decathlon/view/womenFootwear/WomenFootWear.dart';
import 'package:flutter/material.dart';

class Mencollectioncategory extends StatefulWidget {
  const Mencollectioncategory({super.key});

  @override
  State<Mencollectioncategory> createState() => _MencollectioncategoryState();
}

class _MencollectioncategoryState extends State<Mencollectioncategory> {
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
          "Men Collection",
          style: TextStyle(fontSize: 20, color: ColorConstants.DARK_GREY),
        ),
      ),
      body: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          _buildLeftSideCategorySection(),
          SizedBox(
            width: 20,
          ),
          _buildRightSideCategotySection()
        ],
      ),
    );
  }

  SingleChildScrollView _buildRightSideCategotySection() {
    return SingleChildScrollView(
      controller: _scrollController,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 10,
          ),
          _buildTopwearTitleSection(),
          SizedBox(
            height: 10,
          ),
          _buildTopwearSubCategorySection(),
          SizedBox(
            height: 10,
          ),
          _buldBottomwearTitleSection(),
          SizedBox(
            height: 10,
          ),
          _buildBottomwearSubCategorySection(),
          SizedBox(
            height: 10,
          ),
          _buildFootwearTitleSection(),
          SizedBox(
            height: 10,
          ),
          _buildFootwearSubCategorySection(),
          SizedBox(
            height: 10,
          ),
          _buildJacketTitleSection(),
          SizedBox(
            height: 10,
          ),
          _buildJacketSubCategorySection(),
        ],
      ),
    );
  }

  Container _buildJacketSubCategorySection() {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 10),
      height: 360,
      width: 220,
      child: GridView.builder(
          itemCount: 7,
          shrinkWrap: true,
          physics: NeverScrollableScrollPhysics(),
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisSpacing: 20, childAspectRatio: 1 / 2, crossAxisCount: 3),
          itemBuilder: (context, index) => CategoriesMainCard(
              cateImage: DummyDb.menJacketslist[index]["image"],
              cateName: DummyDb.menJacketslist[index]["textData"])),
    );
  }

  Row _buildJacketTitleSection() {
    return Row(
      children: [
        Text(
          "Men Jackets & Sweatsshirts",
          style: TextStyle(
              color: ColorConstants.MAIN_BLACK,
              fontSize: 12,
              fontWeight: FontWeight.bold),
        ),
        Container(
          width: 60,
          height: 1,
          color: ColorConstants.GREY,
          margin: EdgeInsets.symmetric(horizontal: 5),
        )
      ],
    );
  }

  Container _buildFootwearSubCategorySection() {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 10),
      height: 360,
      width: 220,
      child: GridView.builder(
          itemCount: DummyDb.menFootwearList.length,
          shrinkWrap: true,
          physics: NeverScrollableScrollPhysics(),
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisSpacing: 20, childAspectRatio: 1 / 2, crossAxisCount: 3),
          itemBuilder: (context, index) => CategoriesMainCard(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => WomenFootwear(
                              title: DummyDb.menFootwearList[index]["textData"],
                            )));
              },
              cateImage: DummyDb.menFootwearList[index]["image"],
              cateName: DummyDb.menFootwearList[index]["textData"])),
    );
  }

  Row _buildFootwearTitleSection() {
    return Row(
      children: [
        Text(
          "Men Footwear",
          style: TextStyle(
              color: ColorConstants.MAIN_BLACK,
              fontSize: 12,
              fontWeight: FontWeight.bold),
        ),
        Container(
          width: 140,
          height: 1,
          color: ColorConstants.GREY,
          margin: EdgeInsets.symmetric(horizontal: 5),
        )
      ],
    );
  }

  Container _buildBottomwearSubCategorySection() {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 10),
      height: 360,
      width: 220,
      child: GridView.builder(
          itemCount: DummyDb.menBottomwearList.length,
          shrinkWrap: true,
          physics: NeverScrollableScrollPhysics(),
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisSpacing: 20, childAspectRatio: 1 / 2, crossAxisCount: 3),
          itemBuilder: (context, index) => CategoriesMainCard(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => MenBottomwear(
                              title: DummyDb.menBottomwearList[index]
                                  ["textdata"],
                            )));
              },
              cateImage: DummyDb.menBottomwearList[index]["image"],
              cateName: DummyDb.menBottomwearList[index]["textdata"])),
    );
  }

  Row _buldBottomwearTitleSection() {
    return Row(
      children: [
        Text(
          "Men bottomwear",
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
    );
  }

  Container _buildTopwearSubCategorySection() {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 10),
      height: 360,
      width: 220,
      child: GridView.builder(
          itemCount: DummyDb.menTopwear.length,
          shrinkWrap: true,
          physics: NeverScrollableScrollPhysics(),
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisSpacing: 20, childAspectRatio: 1 / 2, crossAxisCount: 3),
          itemBuilder: (context, index) => CategoriesMainCard(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => MensTopwear(
                              title: DummyDb.menTopwear[index]["textData"],
                            )));
              },
              cateImage: DummyDb.menTopwear[index]["image"],
              cateName: DummyDb.menTopwear[index]["textData"])),
    );
  }

  Row _buildTopwearTitleSection() {
    return Row(
      children: [
        Text(
          "Men Topwear",
          style: TextStyle(
              color: ColorConstants.MAIN_BLACK,
              fontSize: 12,
              fontWeight: FontWeight.bold),
        ),
        Container(
          width: 140,
          height: 1,
          color: ColorConstants.GREY,
          margin: EdgeInsets.symmetric(horizontal: 10),
        )
      ],
    );
  }

  Column _buildLeftSideCategorySection() {
    return Column(
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
                      height: 65,
                      width: 65,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage(
                                DummyDb.homeFirstCategory[0]["image"]),
                            fit: BoxFit.cover),
                      ),
                    ),
                    Text(
                      "Men Topwear",
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
                      height: 65,
                      width: 65,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                            image: NetworkImage(
                                DummyDb.mainItemContainerList[0]["image"]),
                            fit: BoxFit.cover),
                      ),
                    ),
                    Text(
                      "Men Bottomwear",
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
                      height: 65,
                      width: 65,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage(
                                DummyDb.homeFirstCategory[3]["image"]),
                            fit: BoxFit.cover),
                      ),
                    ),
                    Text(
                      "Men Footwear",
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
                      height: 65,
                      width: 65,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                            image: NetworkImage(
                                DummyDb.menJacketslist[6]["image"]),
                            fit: BoxFit.cover),
                      ),
                    ),
                    Text(
                      "Men jackets &\nSweatshirts",
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
    );
  }
}
