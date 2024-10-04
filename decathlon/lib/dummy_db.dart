import 'package:decathlon/utils/constants/image_constants.dart';
import 'package:decathlon/view/mensTopwear/mensTopwear.dart';
import 'package:decathlon/view/womenFootwear/WomenFootWear.dart';
import 'package:decathlon/view/womenTopwear.dart/womenTopwear.dart';
import 'package:flutter/material.dart';

class DummyDb {
  static List homeFirstCategory = [
    {"image": "assets/image/men.jpg", "catogoryName": "Men"},
    {"image": "assets/image/women.jpg", "catogoryName": "Women"},
    {"image": "assets/image/kids.jpg", "catogoryName": "Kids"},
    {"image": "assets/image/shoes.jpg", "catogoryName": "Shoes"},
    {"image": "assets/image/caps.jpg", "catogoryName": "Caps & Beanies"},
    {"image": "assets/image/backpacks.jpg", "catogoryName": "Backpacks"},
    {
      "image": "assets/image/sports_acce.jpg",
      "catogoryName": "Sports Accessories"
    },
    {"image": "assets/image/All_sports.jpg", "catogoryName": "All Sports"},
  ];
  static List exploreAllList = [
    {
      "image":
          "https://images.pexels.com/photos/6389869/pexels-photo-6389869.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
      "firstText": "BESTSELLER",
      "secondText": "CARDIO\nEQUIPMENTS",
      "thirdText": "Free Delivery & Installation*"
    },
    {
      "image":
          "https://images.pexels.com/photos/6831029/pexels-photo-6831029.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
      "firstText": "ULTRA LIGHT",
      "secondText": "DOWN AND PADDED JACKETS",
      "thirdText": "Men | Women | Kids"
    },
    {
      "image":
          "https://images.pexels.com/photos/10209295/pexels-photo-10209295.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
      "firstText": "ADVENTURE READY",
      "secondText": "TRAVEL & LAPTOP BAGS",
      "thirdText": "Upto 10 year Warranty*s"
    },
  ];
  static const List imageAndTextListOne = [
    {
      "image":
          "https://images.pexels.com/photos/914996/pexels-photo-914996.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
      "textData": "Skating"
    },
    {
      "image":
          "https://images.pexels.com/photos/11191174/pexels-photo-11191174.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
      "textData": "Gym & Fitness"
    },
    {
      "image":
          "https://images.pexels.com/photos/3764537/pexels-photo-3764537.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
      "textData": "Running"
    },
    {
      "image":
          "https://images.pexels.com/photos/1263348/pexels-photo-1263348.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
      "textData": "Swimming"
    },
    {
      "image":
          "https://images.pexels.com/photos/274422/pexels-photo-274422.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
      "textData": "Football"
    },
    {
      "image":
          "https://images.pexels.com/photos/21317464/pexels-photo-21317464/free-photo-of-woman-running-in-triathlon-race.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
      "textData": "Triathlon Gear"
    },
    {
      "image":
          "https://images.pexels.com/photos/5739161/pexels-photo-5739161.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
      "textData": "tennis"
    },
    {
      "image":
          "https://images.pexels.com/photos/848618/pexels-photo-848618.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
      "textData": "Skiing"
    },
    {
      "image":
          "https://images.pexels.com/photos/8007419/pexels-photo-8007419.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
      "textData": "Batminton"
    },
  ];
  static const List imageAndTextListTwo = [
    {
      "image":
          "https://images.pexels.com/photos/18331843/pexels-photo-18331843/free-photo-of-a-person-climbing-up-a-mountain-with-a-backpack.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
      "textData": "Hike & Trekking"
    },
    {
      "image":
          "https://images.pexels.com/photos/1174103/pexels-photo-1174103.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
      "textData": "Cycling"
    },
    {
      "image":
          "https://images.pexels.com/photos/5589360/pexels-photo-5589360.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
      "textData": "Camping"
    },
    {
      "image":
          "https://images.pexels.com/photos/3077882/pexels-photo-3077882.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
      "textData": "Climbing"
    },
    {
      "image":
          "https://images.pexels.com/photos/20675333/pexels-photo-20675333/free-photo-of-lifeguard.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
      "textData": "Nature watching"
    },
    {
      "image":
          "https://images.pexels.com/photos/7858232/pexels-photo-7858232.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
      "textData": "Golf"
    },
    {
      "image":
          "https://images.pexels.com/photos/4422911/pexels-photo-4422911.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
      "textData": "Walking"
    },
    {
      "image":
          "https://images.pexels.com/photos/163452/basketball-dunk-blue-game-163452.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
      "textData": "BasketBall"
    },
    {
      "image":
          "https://images.pexels.com/photos/18511482/pexels-photo-18511482/free-photo-of-ping-pong-ball-and-rackets.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
      "textData": "Table Tennis"
    },
  ];
  static const List mainItemContainerList = [
    {
      "yellowBox": "Lowest price best value",
      "image":
          "https://contents.mediadecathlon.com/p1724744/a8373278310c30c7ce0af8f5b36843c1/p1724744.jpg?format=auto&quality=70&f=425x0",
      "rating": "4.7 | 3.9k",
      "name": "DOMYOS",
      "details":
          "Strechable Quick Dry,Zip Pocket,Convetible Jog FIt-Mens Gym TrackPant black",
      "price": "₹999"
    },
    {
      "yellowBox": "Clearence",
      "image":
          "https://contents.mediadecathlon.com/p2567719/2aca3f4099688aac3c2f973757bc2ab1/p2567719.jpg?format=auto&quality=70&f=425x0",
      "rating": "4.0 | 3.9k",
      "name": "DOMYOS",
      "details": "Men's Tshirt Regular Fit For Light Activity-Black",
      "price": "₹199"
    },
    {
      "yellowBox": "Price Drop",
      "image":
          "https://contents.mediadecathlon.com/p2754682/3b1e70ded996629dabc18ac4e32a664b/p2754682.jpg?format=auto&quality=70&f=425x0",
      "rating": "4.4 | 72",
      "name": "KIMJALY",
      "details":
          "Yoga Mat, 4 mm thick, 172 x 58 cm, Foam - Blue, Lightweight, For Soft Yoga",
      "price": "₹399"
    },
    {
      "yellowBox": "Top Rated",
      "image":
          "https://contents.mediadecathlon.com/p2273755/fbfd2f6805de6c0a5bcfee979eaf1827/p2273755.jpg?format=auto&quality=70&f=425x0",
      "rating": "4.7 | 2.9k",
      "name": "DOMYOS",
      "details": "Men Sports Gym Shorts With Zip Pocket Black",
      "price": "₹999"
    },
  ];
  static const List outdoorSportsCategoryList = [
    {
      "image":
          "https://images.pexels.com/photos/18331843/pexels-photo-18331843/free-photo-of-a-person-climbing-up-a-mountain-with-a-backpack.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
      "textData": "Hike &\nTrekking"
    },
    {
      "image":
          "https://images.pexels.com/photos/5589360/pexels-photo-5589360.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
      "textData": "Camping"
    },
    {
      "image":
          "https://images.pexels.com/photos/27797908/pexels-photo-27797908/free-photo-of-a-woman-hiking-with-trek-poles-on-a-trail.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
      "textData": "Wildlife\nWatching"
    },
    {
      "image":
          "https://images.pexels.com/photos/848618/pexels-photo-848618.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
      "textData": "Skiing &\nSnowboarding"
    },
    {
      "image":
          "https://images.pexels.com/photos/3077882/pexels-photo-3077882.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
      "textData": "Climbing"
    },
    {
      "image":
          "https://images.pexels.com/photos/1143921/pexels-photo-1143921.jpeg?auto=compress&cs=tinysrgb&w=600",
      "textData": "Fishing"
    },
    {
      "image":
          "https://images.pexels.com/photos/1559388/pexels-photo-1559388.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
      "textData": "Horse\nRiding"
    }
  ];
  static const List fitnessSportsYogaList = [
    {
      "image":
          "https://images.pexels.com/photos/6389869/pexels-photo-6389869.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
      "textData": "Fitness\nCardio"
    },
    {
      "image":
          "https://images.pexels.com/photos/11191174/pexels-photo-11191174.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
      "textData": "Gym & Fitness"
    },
    {
      "image":
          "https://images.pexels.com/photos/460307/pexels-photo-460307.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
      "textData": "Yoga"
    },
    {
      "image":
          "https://images.pexels.com/photos/6572605/pexels-photo-6572605.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
      "textData": "Kids Sports\n & Gymnastic"
    },
    {
      "image":
          "https://images.pexels.com/photos/1544774/pexels-photo-1544774.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
      "textData": "Boxing &\nMartial Arts"
    },
  ];
  static const List waterSportsList = [
    {
      "image":
          "https://images.pexels.com/photos/1263348/pexels-photo-1263348.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
      "textData": "Swimming"
    },
    {
      "image":
          "https://images.pexels.com/photos/1654489/pexels-photo-1654489.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
      "textData": "Surfing &\nBeach Sports"
    },
    {
      "image":
          "https://images.pexels.com/photos/1670468/pexels-photo-1670468.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
      "textData": "Snorkelling\n& Diving"
    },
    {
      "image":
          "https://images.pexels.com/photos/1522344/pexels-photo-1522344.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
      "textData": "Kayaking &\nStand Up Paddle"
    },
    {
      "image":
          "https://images.pexels.com/photos/144249/sailing-boat-sail-holiday-holidays-144249.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
      "textData": "Sailing"
    }
  ];
  static const List menTopwear = [
    {
      "image":
          "https://contents.mediadecathlon.com/p2450386/e733d4b88b0da89281803516482127ef/p2450386.jpg?format=auto&quality=70&f=425x0",
      "textData": "Men\nAthleisure"
    },
    {
      "image":
          "https://contents.mediadecathlon.com/p2567818/1bd67d8d7fa0df309cb519b38f2bd353/p2567818.jpg?format=auto&quality=70&f=425x0",
      "textData": "Men\nCotton T-Shirt"
    },
    {
      "image":
          "https://contents.mediadecathlon.com/p2107974/949d87c925d2431e5317b833c586dbf9/p2107974.jpg?format=auto&quality=70&f=425x0",
      "textData": "Men Polo\nT-Shirt"
    },
    {
      "image":
          "https://contents.mediadecathlon.com/p2157179/99dbbc7bee199d640a7024645b6a812d/p2157179.jpg?format=auto&quality=70&f=425x0",
      "textData": "Men Tank\nTops"
    },
    {
      "image":
          "https://contents.mediadecathlon.com/p2598900/f701943b24e08bec146412494f2f60a2/p2598900.jpg?format=auto&quality=70&f=425x0",
      "textData": "Men Shirts"
    },
    {
      "image":
          "https://contents.mediadecathlon.com/p2384068/a2e5047577d2a2ee0c87a7d0b3c7a70a/p2384068.jpg?format=auto&quality=70&f=425x0",
      "textData": "Men Swim\nBeach T-Shirt"
    },
    {
      "image":
          "https://contents.mediadecathlon.com/p2594977/74663bd7bb632499a8148c02678ce1b6/p2594977.jpg?format=auto&quality=70&f=425x0",
      "textData": "Men\nSweatshirt"
    },
    {
      "image":
          "https://contents.mediadecathlon.com/p1725445/7069f63b668a724a90678520dc329a8b/p1725445.jpg?format=auto&quality=70&f=425x0",
      "textData": "Men\nFleeces"
    },
    {
      "image":
          "https://contents.mediadecathlon.com/p2567719/2aca3f4099688aac3c2f973757bc2ab1/p2567719.jpg?format=auto&quality=70&f=425x0",
      "textData": "T-Shirts\nUnder 999"
    },
  ];
  static const List menBottomwearList = [
    {
      "image":
          "https://contents.mediadecathlon.com/p1683726/198d05cc4ae5d310d680fe2286a61915/p1683726.jpg?format=auto&quality=70&f=425x0",
      "textdata": "Men Shorts"
    },
    {
      "image":
          "https://contents.mediadecathlon.com/p1724744/a8373278310c30c7ce0af8f5b36843c1/p1724744.jpg?format=auto&quality=70&f=425x0",
      "textdata": "Men Track\npants &Joggers"
    },
    {
      "image":
          "https://contents.mediadecathlon.com/p1628209/0867b68edad7279ad552c225ae2e5afa/p1628209.jpg?format=auto&quality=70&f=425x0",
      "textdata": "Men\nTrousers"
    },
    {
      "image":
          "https://contents.mediadecathlon.com/p2428517/1ce9a5c66720c76df4c97218ea3a7913/p2428517.jpg?format=auto&quality=70&f=425x0",
      "textdata": "Men\nRain pants"
    },
    {
      "image":
          "https://contents.mediadecathlon.com/p1724978/f6f7dc625e2e6059d28e87c54b3db4a0/p1724978.jpg?format=auto&quality=70&f=425x0",
      "textdata": "Men Tights"
    },
    {
      "image":
          "https://contents.mediadecathlon.com/p2383390/e7215de3cfa3f53568fafccbf8d31a4b/p2383390.jpg?format=auto&quality=70&f=425x0",
      "textdata": "Men Swim\nCostumes"
    },
    {
      "image":
          "https://contents.mediadecathlon.com/p2415594/a1640e71b0dd49a988e97f7cbea1b0a4/p2415594.jpg?format=auto&quality=70&f=425x0",
      "textdata": "Shorts\nUnder 999"
    },
    {
      "image":
          "https://contents.mediadecathlon.com/p2470502/6047e7e2f70b7ae4b7d76b08608ba31e/p2470502.jpg?format=auto&quality=70&f=425x0",
      "textdata": "Track\nPants Under 999"
    },
  ];
  static const List menFootwearList = [
    {
      "image":
          "https://contents.mediadecathlon.com/p2155506/b1346043d6b4074b787504adbd3af650/p2155506.jpg?format=auto&quality=70&f=425x0",
      "textData": "Men Sports\nShoes"
    },
    {
      "image":
          "https://contents.mediadecathlon.com/p2031985/9c50c6f56b104a9af195ddca2addbded/p2031985.jpg?format=auto&quality=70&f=425x0",
      "textData": "Men\n Sandals"
    },
    {
      "image":
          "https://contents.mediadecathlon.com/p2515613/6986c2f83ac7771bcd47808912966d22/p2515613.jpg?format=auto&quality=70&f=425x0",
      "textData": "Men Flip\nFlops"
    },
    {
      "image":
          "https://contents.mediadecathlon.com/p2155509/6150bc94fa56b37f51f6bb26ad3e01d3/p2155509.jpg?format=auto&quality=70&f=425x0",
      "textData": "Men\nRunning Shoes"
    },
    {
      "image":
          "https://contents.mediadecathlon.com/p2394227/e67e3338961da177bdf0c74714baa398/p2394227.jpg?format=auto&quality=70&f=425x0",
      "textData": "Men\nWalking Shoes"
    },
    {
      "image":
          "https://contents.mediadecathlon.com/p1692773/33a46f2e8c97968fe17f38c64ef39067/p1692773.jpg?format=auto&quality=70&f=425x0",
      "textData": "Men\nOutdoor Shoes"
    },
    {
      "image":
          "https://contents.mediadecathlon.com/p2449799/60878f609fbdfa98dfd2cfb59b09c787/p2449799.jpg?format=auto&quality=70&f=425x0",
      "textData": "Men\nNon Marketing Shoes"
    },
    {
      "image":
          "https://contents.mediadecathlon.com/p2380156/6df4b7b871e1bc4cd2f3fe838362468d/p2380156.jpg?format=auto&quality=70&f=425x0",
      "textData": "Men\n Football Shoes"
    },
    {
      "image":
          "https://contents.mediadecathlon.com/p1961439/f00c14233fa98545a6c0c66a144fba41/p1961439.jpg?format=auto&quality=70&f=425x0",
      "textData": "Scocks"
    },
  ];
  static const List menJacketslist = [
    {
      "image":
          "https://contents.mediadecathlon.com/p2195005/c3c6c9423250e2580e5f8cc3a77b1847/p2195005.jpg?format=auto&quality=70&f=425x0",
      "textData": "Men\nRainCoat"
    },
    {
      "image":
          "https://contents.mediadecathlon.com/p2710000/37e0a933856517f00d3d38a228250ddf/p2710000.jpg?format=auto&quality=70&f=425x0",
      "textData": "Men\nSports Jackets"
    },
    {
      "image":
          "https://contents.mediadecathlon.com/p2710470/406b23a2a4e9dbd6960c66dd027281e7/p2710470.jpg?format=auto&quality=70&f=425x0",
      "textData": "Men\nWinter Jackets"
    },
    {
      "image":
          "https://contents.mediadecathlon.com/p2292980/f3e2f16e0e1bcb4997e587cb4a77a2a5/p2292980.jpg?format=auto&quality=70&f=425x0",
      "textData": "Men Warm\n& Waterproof Jackets"
    },
    {
      "image":
          "https://contents.mediadecathlon.com/p2688125/862b279cb79c7632a536852f0ae5fa92/p2688125.jpg?format=auto&quality=70&f=425x0",
      "textData": "Men\nPadded Jackets"
    },
    {
      "image":
          "https://contents.mediadecathlon.com/p2307759/61d172b2cd4d51cc952d1844628c5076/p2307759.jpg?format=auto&quality=70&f=425x0",
      "textData": "Men\nWind Cheaters"
    },
    {
      "image":
          "https://contents.mediadecathlon.com/p2597050/af89f09d0124992bbc2d775e0560a46b/p2597050.jpg?format=auto&quality=70&f=425x0",
      "textData": "Jackets\nUnder 999"
    },
  ];
  static const List womenTopwearList = [
    {
      "image":
          "https://contents.mediadecathlon.com/p2673143/8ca84fbe34729f9f8e735d1736b579e6/p2673143.jpg?format=auto&quality=70&f=425x0",
      "textData": "Women\nT-Shirt"
    },
    {
      "image":
          "https://contents.mediadecathlon.com/p2666199/9d0438b32e18baf72c0daf3bb3e5de2e/p2666199.jpg?format=auto&quality=70&f=425x0",
      "textData": "Women\nPolo T-Shirt"
    },
    {
      "image":
          "https://contents.mediadecathlon.com/p2510297/4c762bd8f03774388f8caaaf70a9dd03/p2510297.jpg?format=auto&quality=70&f=425x0",
      "textData": "Women\nTrack Tops"
    },
    {
      "image":
          "https://contents.mediadecathlon.com/p2510352/0b5d513d3a2dcbdc4d097e1025c9e855/p2510352.jpg?format=auto&quality=70&f=425x0",
      "textData": "Women\nCrop Tops"
    },
    {
      "image":
          "https://contents.mediadecathlon.com/p2628529/138c7a12cbd1ec6e5822bddc1fa5488d/p2628529.jpg?format=auto&quality=70&f=425x0",
      "textData": "Women\nSweatshirts"
    },
    {
      "image":
          "https://contents.mediadecathlon.com/p1714400/49cf73f89d204a918aa0c125dfeec283/p1714400.jpg?format=auto&quality=70&f=425x0",
      "textData": "Women\nSweater"
    },
    {
      "image":
          "https://contents.mediadecathlon.com/p2383680/c09a7722759abf1aff7e2bf81d0346bf/p2383680.jpg?format=auto&quality=70&f=425x0",
      "textData": "Women\nSwim Suits"
    },
    {
      "image":
          "https://contents.mediadecathlon.com/p2672525/3ac503ff69a515e5952faad70bd042f1/p2672525.jpg?format=auto&quality=70&f=425x0",
      "textData": "Women\nActivewear"
    },
    {
      "image":
          "https://contents.mediadecathlon.com/p2621848/9aa6956200b602c1c9b6e6fead6cc077/p2621848.jpg?format=auto&quality=70&f=425x0",
      "textData": "Women\nRainCoats"
    },
  ];
  static const List womenFootwearList = [
    {
      "image":
          "https://contents.mediadecathlon.com/p1568028/ec5691369e2c0981cd89ba0b9d78f0ae/p1568028.jpg?format=auto&quality=70&f=425x0",
      "textData": "Women\nSports Shoes"
    },
    {
      "image":
          "https://contents.mediadecathlon.com/p2406055/503b929cdde01070264a608ee11f639b/p2406055.jpg?format=auto&quality=70&f=425x0",
      "textData": "Women\nSandals"
    },
    {
      "image":
          "https://contents.mediadecathlon.com/p2436824/58c81c2c34179dfcce20e750a3985030/p2436824.jpg?format=auto&quality=70&f=425x0",
      "textData": "Women\nFlip-Flops"
    },
    {
      "image":
          "https://contents.mediadecathlon.com/p2155569/0c4a7f49e0ce803aa75e5cb777940819/p2155569.jpg?format=auto&quality=70&f=425x0",
      "textData": "Women\nRunning Shoes"
    },
    {
      "image":
          "https://contents.mediadecathlon.com/p1568028/ec5691369e2c0981cd89ba0b9d78f0ae/p1568028.jpg?format=auto&quality=70&f=425x0",
      "textData": "Women\nWalking Shoes"
    },
    {
      "image":
          "https://contents.mediadecathlon.com/p1144537/dfa2801f7269e1b78e6c2f502fe513c7/p1144537.jpg?format=auto&quality=70&f=425x0",
      "textData": "Women\nOutdoor Shoes"
    },
    {
      "image":
          "https://contents.mediadecathlon.com/p1929547/213dac6664c0c32cb343bd46bcc78eef/p1929547.jpg?format=auto&quality=70&f=425x0",
      "textData": "Women\nNon Marketing Shoes"
    },
    {
      "image":
          "https://contents.mediadecathlon.com/p1961439/f00c14233fa98545a6c0c66a144fba41/p1961439.jpg?format=auto&quality=70&f=425x0",
      "textData": "Socks"
    },
  ];
  static const List womenBottomwearList = [
    {
      "image":
          "https://contents.mediadecathlon.com/p2731534/237a39e0e4626b12ed99691d7068a60f/p2731534.jpg?format=auto&quality=70&f=425x0",
      "textData": "Women\nShorts"
    },
    {
      "image":
          "https://contents.mediadecathlon.com/p2429341/df96c7dc27dd1f28df54a79d104b4500/p2429341.jpg?format=auto&quality=70&f=425x0",
      "textData": "Women\nLeggings"
    },
    {
      "image":
          "https://contents.mediadecathlon.com/p2407373/07dc1a82751898b555bdcf233593ddb2/p2407373.jpg?format=auto&quality=70&f=425x0",
      "textData": "Women\nTrackPants"
    },
    {
      "image":
          "https://contents.mediadecathlon.com/p2489057/b346213bfc0afb2ade74a355927d395e/p2489057.jpg?format=auto&quality=70&f=425x0",
      "textData": "Women\nTrousers"
    },
    {
      "image":
          "https://contents.mediadecathlon.com/p2219587/5868c07267e2df6b205cca2d82d3fcd0/p2219587.jpg?format=auto&quality=70&f=425x0",
      "textData": "Women\nSkirts"
    },
    {
      "image":
          "https://contents.mediadecathlon.com/p2632539/51d8b968ae796f1048918b8267c042be/p2632539.jpg?format=auto&quality=70&f=425x0",
      "textData": "Shorts\nUnder 999"
    },
  ];
  static const List womenJacketsList = [
    {
      "image":
          "https://contents.mediadecathlon.com/p2170170/6fb957250c2c812c8946e3d19fa25d91/p2170170.jpg?format=auto&quality=70&f=425x0",
      "textData": "Women\nSports jackets"
    },
    {
      "image":
          "https://contents.mediadecathlon.com/p2184132/83726feeb3524f9992656969fbffba1e/p2184132.jpg?format=auto&quality=70&f=425x0",
      "textData": "Women\nRaincoats"
    },
    {
      "image":
          "https://contents.mediadecathlon.com/p2156743/37f00ed6a03ce11d5c3661c07f590918/p2156743.jpg?format=auto&quality=70&f=425x0",
      "textData": "Women\nWindcheater"
    },
    {
      "image":
          "https://contents.mediadecathlon.com/p1714400/49cf73f89d204a918aa0c125dfeec283/p1714400.jpg?format=auto&quality=70&f=425x0",
      "textData": "Women\nSweaters"
    },
    {
      "image":
          "https://contents.mediadecathlon.com/p2710372/603e45d3e59a20a831ebd1c24f4f3109/p2710372.jpg?format=auto&quality=70&f=425x0",
      "textData": "Women\nWinter Jackets"
    },
    {
      "image":
          "https://contents.mediadecathlon.com/p2718254/da2380e5ad210ff29b3d202108fd379b/p2718254.jpg?format=auto&quality=70&f=425x0",
      "textData": "Women\nSnow Jackets"
    },
    {
      "image":
          "https://contents.mediadecathlon.com/p2687956/5597c9f319976b47f710fdfbdd1a05f3/p2687956.jpg?format=auto&quality=70&f=425x0",
      "textData": "Women\nPadded Jackets"
    },
  ];
  static const List menTopwearDetailedList = [
    {
      "image":
          "https://contents.mediadecathlon.com/p2567719/2aca3f4099688aac3c2f973757bc2ab1/p2567719.jpg?format=auto&quality=70&f=425x0",
      "rating": "4.0 | 3.9k",
      "name": "DOMYOS",
      "details": "Men's Tshirt Regular Fit For Light Activity-Black",
      "price": "₹199"
    },
    {
      "image":
          "https://contents.mediadecathlon.com/p1800679/3137826db9d255d6f1fa792c432a2818/p1800679.jpg?format=auto&quality=70&f=425x0",
      "rating": "4.7 | 4.9k",
      "name": "QUECHUA",
      "details": "Men Dry Fit Activewear T-Shirt Blue - MH500",
      "price": "₹699"
    },
    {
      "image":
          "https://contents.mediadecathlon.com/p2437392/989571bc690ccca2d1b51217e0bb7deb/p2437392.jpg?format=auto&quality=70&f=425x0",
      "rating": "4.6 | 2,7k",
      "name": "FORCLAZ",
      "details":
          "Men Checked Full Sleeve Light Flannel Shirt Brown - Travel 500",
      "price": "₹1499"
    },
    {
      "image":
          "https://contents.mediadecathlon.com/p2146638/811046489b5fbf9f07d1775ca2c4f27d/p2146638.jpg?format=auto&quality=70&f=425x0",
      "rating": "4.7 | 5.9k",
      "name": "TRIBORD",
      "details": "Men Waterproof Sailing Jacket 100 Petrol White",
      "price": "₹1999"
    },
    {
      "image":
          "https://contents.mediadecathlon.com/p2345487/cdb7aba1d4386df7a0b70adcdece516a/p2345487.jpg?format=auto&quality=70&f=425x0",
      "rating": "4.6 | 1.9k",
      "name": "TARMAK",
      "details": "Men Sleeveless Basketball Jersey T100 Black",
      "price": "₹299"
    },
    {
      "image":
          "https://contents.mediadecathlon.com/p2532216/0b29e92c1cc08d8cbbd6aaf62a1f081c/p2532216.jpg?format=auto&quality=70&f=425x0",
      "rating": "4.7 | 104",
      "name": "WEDZE",
      "details": "MEN’S WARM PADDED SKI JACKET 900 WARM - BLUE",
      "price": "₹19,999"
    },
    {
      "image":
          "https://contents.mediadecathlon.com/p2249839/bf3be5613061334f290df8883a3cfbe9/p2249839.jpg?format=auto&quality=70&f=425x0",
      "rating": "4.5 | 673",
      "name": "SOLOGNAC",
      "details": "Rain Waterproof Lightweight Jacket 100- Camo Green",
      "price": "₹1299"
    },
    {
      "image":
          "https://contents.mediadecathlon.com/p2433320/1f268a2277135265c8cd192538b9fee1/p2433320.jpg?format=auto&quality=70&f=425x0",
      "rating": "4.4 | 475",
      "name": "INESIS",
      "details":
          "Men's golf 100% cotton short-sleeved polo shirt - MW100 White",
      "price": "₹499"
    },
    {
      "image":
          "https://contents.mediadecathlon.com/p2682517/005644ef3e018467dba108c1b5ffa375/p2682517.jpg?format=auto&quality=70&f=425x0",
      "rating": "4.7 | 554",
      "name": "OLAIAN",
      "details": "Men's surfing UV protection top BRUSH BLK",
      "price": "₹1199"
    },
    {
      "image":
          "https://contents.mediadecathlon.com/p2521487/3eff2821ce6db7625d6612aeb2c0f369/p2521487.jpg?format=auto&quality=70&f=425x0",
      "rating": "4.7 | 6.4k",
      "name": "QUECHUA",
      "details": "Men’s hiking waterproof winter jacket - SH500 -10°C",
      "price": "₹3299"
    },
    {
      "image":
          "https://contents.mediadecathlon.com/p1714170/54ddd64d388c9201f54b4c5a7d2ca672/p1714170.jpg?format=auto&quality=70&f=425x0",
      "rating": "4.5 | 7.4k",
      "name": "QUECHUA",
      "details": "Men Sweater Round Neck Fleece for Hiking MH20 Black",
      "price": "₹299"
    },
    {
      "image":
          "https://contents.mediadecathlon.com/p2621717/9187b790d490d3466331da32f7e6a4ca/p2621717.jpg?format=auto&quality=70&f=425x0",
      "rating": "4.5 | 3.5k",
      "name": "KIPSTA",
      "details": "Men Football Jersey shirt F100 - Black",
      "price": "₹349"
    },
    {
      "image":
          "https://contents.mediadecathlon.com/p2256020/2b3ec8321073f5887299808421c2ebf2/p2256020.jpg?format=auto&quality=70&f=425x0",
      "rating": "4.6 | 294",
      "name": "KIPSTA",
      "details": "Football Jacket Training Essential - Black/Grey",
      "price": "₹999"
    },
    {
      "image":
          "https://contents.mediadecathlon.com/p2595030/1882c738e82b914f07f52b41034308ce/p2595030.jpg?format=auto&quality=70&f=425x0",
      "rating": "4.5 | 775",
      "name": "DOMYOS",
      "details":
          "Men Sweatshirt With Hood and Zip Fleece Lined 500 For Gym-Mahogany Brown",
      "price": "₹499"
    },
  ];
  static const List menBottomwearDetailedList = [
    {
      "image":
          "https://contents.mediadecathlon.com/p2043061/9bf1f4d36b1d1fe5f00747b56898a3ef/p2043061.jpg?format=auto&quality=70&f=425x0",
      "rating": "4.5 | 5.4k",
      "name": "KALENJI",
      "details": "Men Running Shorts Run Dry+ - Black",
      "price": "₹599"
    },
    {
      "image":
          "https://contents.mediadecathlon.com/p1976638/948527473ee778eb476eeadc83dec1f8/p1976638.jpg?format=auto&quality=70&f=425x0",
      "rating": "4.4 | 3.4k",
      "name": "KALENJI",
      "details":
          "Quick Dry, 3 Pocket, Jog Fit-Mens Running Trackpant Dark Blue",
      "price": "₹999"
    },
    {
      "image":
          "https://contents.mediadecathlon.com/p2600577/dd5af38cad41b69d61cda655e3ffca88/p2600577.jpg?format=auto&quality=70&f=425x0",
      "rating": "4.7 | 226",
      "name": "KALENJI",
      "details": "Men's Running Tight Shorts - Kiprun Run 100 Black",
      "price": "₹699"
    },
    {
      "image":
          "https://contents.mediadecathlon.com/p2584885/f6a38bfdadc7827bc3fc2eb6fa51ddb9/p2584885.jpg?format=auto&quality=70&f=425x0",
      "rating": "4.7 | 2.9k",
      "name": "SOLOGNAC",
      "details":
          "Men Breathable Lightweight Cargo Trousers Pants SG-500 - Grey",
      "price": "₹1999"
    },
  ];
  static const List womenTopwearDetailedList = [
    {
      "image":
          "https://contents.mediadecathlon.com/p2630539/01f4163f037167dddb1f87a32b41d3b5/p2630539.jpg?format=auto&quality=70&f=425x0",
      "rating": "5 | 4",
      "name": "DOMYOS",
      "details": "FTA 120 - Multicolour Crop",
      "price": "₹599"
    },
    {
      "image":
          "https://contents.mediadecathlon.com/p2643734/bb5d0374aa93d70d85966bafc690f841/p2643734.jpg?format=auto&quality=70&f=425x0",
      "rating": "4.7 | 6.4k",
      "name": "QUECHUA",
      "details": "Women Sleeveless Tank Top Cherry Purple - NH500",
      "price": "₹399"
    },
    {
      "image":
          "https://contents.mediadecathlon.com/p2510448/18ef3cf62bdee1768f721c9a67fb5904/p2510448.jpg?format=auto&quality=70&f=425x0",
      "rating": "4.8 | 64",
      "name": "DOMYOS",
      "details": "Women Gym Jacket Hooded - Black",
      "price": "₹2999"
    },
    {
      "image":
          "https://contents.mediadecathlon.com/p2456103/dd935f80e16070be3e8f31acc077f429/p2456103.jpg?format=auto&quality=70&f=425x0",
      "rating": "4.7 | 144",
      "name": "DOMYOS",
      "details": "Women's Sweater Cropped Drawstring 520 For Gym-Purple",
      "price": "₹499"
    },
    {
      "image":
          "https://contents.mediadecathlon.com/p2673143/8ca84fbe34729f9f8e735d1736b579e6/p2673143.jpg?format=auto&quality=70&f=425x0",
      "rating": "4.6 | 649",
      "name": "DOMYOS",
      "details": "Regular-Fit T-Shirt 100",
      "price": "₹199"
    },
    {
      "image":
          "https://contents.mediadecathlon.com/p1975377/210a1e8a8a1593d68c5ab155bbd454fe/p1975377.jpg?format=auto&quality=70&f=425x0",
      "rating": "4.7 | 2.1k",
      "name": "KALENJI",
      "details": "Women Long-Sleeved Running T-Shirt Sun Protect - Black",
      "price": "₹699"
    },
    {
      "image":
          "https://contents.mediadecathlon.com/p2690345/42c6df9c5ceb582e4254129498ed719a/p2690345.jpg?format=auto&quality=70&f=425x0",
      "rating": "4.7 | 2.8k",
      "name": "KIMJALY",
      "details": "Women's Gentle Yoga T-Shirt",
      "price": "₹699"
    },
    {
      "image":
          "https://contents.mediadecathlon.com/p2628497/bcd937a888d718a906f6a3f4d1d2a0d2/p2628497.jpg?format=auto&quality=70&f=425x0",
      "rating": "4.7 | 944",
      "name": "DOMYOS",
      "details": "Women Gym Sports T-Shirt - Purple",
      "price": "₹599"
    },
  ];
  static const List womenFootWearDetailedList = [
    {
      "image":
          "https://contents.mediadecathlon.com/p2582482/fa7b8489d6f29cd45904977375552b07/p2582482.jpg?format=auto&quality=70&f=425x0",
      "rating": "4.5 | 7k",
      "name": "QUECHUA",
      "details":
          "Women Water Resistant Mid Ankle Hiking Shoes Blue Grey - NH150",
      "price": "₹2999"
    },
    {
      "image":
          "https://contents.mediadecathlon.com/p2583099/d8fb3424b417850482824719809d56bb/p2583099.jpg?format=auto&quality=70&f=425x0",
      "rating": "4.7 | 6.9k",
      "name": "QUECHUA",
      "details": "Women Mid Ankle Hiking Shoes Storm Blue - NH100",
      "price": "₹1799"
    },
    {
      "image":
          "https://contents.mediadecathlon.com/p2446895/69722b98cbefce4ce7edc9a87d9a952c/p2446895.jpg?format=auto&quality=70&f=425x0",
      "rating": "4.6 | 2.8k",
      "name": "OLAIAN",
      "details": "Women Slippers/Flip-Flops 100 Turquoise Black",
      "price": "₹199"
    },
    {
      "image":
          "https://contents.mediadecathlon.com/p1929916/24557873e945a6839ecf2bdbd87444c8/p1929916.jpg?format=auto&quality=70&f=425x0",
      "rating": "4.5 | 20",
      "name": "PERFLY",
      "details": "Women Badminton Shoe BS 100 Red",
      "price": "₹1499"
    },
    {
      "image":
          "https://contents.mediadecathlon.com/p1804194/413b626b6cae74ed6c60d67f91ef189f/p1804194.jpg?format=auto&quality=70&f=425x0",
      "rating": "4.3 | 416",
      "name": "FORCLAZ",
      "details": "Women Waterproof Leather Trekking Boots MT100 Brown",
      "price": "₹8999"
    },
    {
      "image":
          "https://contents.mediadecathlon.com/p2180343/0607697b5591566c6acccf744ba8acc0/p2180343.jpg?format=auto&quality=70&f=425x0",
      "rating": "4.4 | 6.8k",
      "name": "QUECHUA",
      "details":
          "Women Water Resistant Sports Sandals with Velcro Strap Abyss Blue - NH500",
      "price": "₹1999"
    },
    {
      "image":
          "https://contents.mediadecathlon.com/p2066480/e25285817d3374a3aef20fba6b3e6077/p2066480.jpg?format=auto&quality=70&f=425x0",
      "rating": "4.3 | 27",
      "name": "KIPSTA",
      "details": "Women's Football Boots Viralto+ I MG - Blue",
      "price": "₹2999"
    },
    {
      "image":
          "https://contents.mediadecathlon.com/p1757783/b6ad24a525ab250f7ebdbf46d6d5dec0/p1757783.jpg?format=auto&quality=70&f=425x0",
      "rating": "4.4 | 504",
      "name": "QUECHUA",
      "details": "Women’s Hiking Boots - NH500 Fresh",
      "price": "₹2999"
    },
  ];
  static List<Widget> listofpages = [
    MensTopwear(),
    WomenTopwear(title: "Women Collection"),
    MensTopwear(),
    WomenFootwear(title: "Shoes Collection"),
    MensTopwear(),
    WomenTopwear(title: "Women Collection"),
    MensTopwear(),
    WomenTopwear(title: "Women Collection"),
  ];
  static List stackimageList = [
    {
      "fimage":
          "https://images.pexels.com/photos/128202/pexels-photo-128202.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
      "simage":
          "https://images.pexels.com/photos/8346655/pexels-photo-8346655.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1"
    }
  ];
}
