import 'dart:async';

import 'package:decathlon/dummy_db.dart';
import 'package:decathlon/utils/constants/color_constants.dart';
import 'package:decathlon/view/home_screen/widgets/exploreAllCard.dart';
import 'package:flutter/material.dart';

class MainCategoryCard extends StatefulWidget {
  MainCategoryCard({
    super.key,
  });

  @override
  State<MainCategoryCard> createState() => _MainCategoryCardState();
}

class _MainCategoryCardState extends State<MainCategoryCard> {
  final PageController _pageController = PageController(initialPage: 0);
  int _currentPage = 0;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer.periodic(Duration(seconds: 3), (Timer timer) {
      if (_currentPage < DummyDb.exploreAllList.length - 1) {
        _currentPage++;
      } else {
        _currentPage = 0; // Loop back to the first item
      }

      // Animate the page change
      _pageController.animateToPage(
        _currentPage,
        duration: Duration(milliseconds: 500), // Smooth transition
        curve: Curves.easeInOut,
      );
    });
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    return SizedBox(
        height: 200,
        child: ListView.builder(
          controller: _pageController,
          itemCount: 3,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) => ExploreAllCard(
              exImage: DummyDb.exploreAllList[index]["image"],
              firstText: DummyDb.exploreAllList[index]["firstText"],
              secondText: DummyDb.exploreAllList[index]["secondText"],
              thirdText: DummyDb.exploreAllList[index]["thirdText"],
              screenWidth: screenWidth),
        ));
  }
}
