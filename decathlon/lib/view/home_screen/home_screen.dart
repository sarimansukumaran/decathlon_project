import 'package:decathlon/dummy_db.dart';
import 'package:decathlon/global_widgets/categoryCard.dart';
import 'package:decathlon/global_widgets/imageTextCard.dart';
import 'package:decathlon/utils/constants/color_constants.dart';
import 'package:decathlon/view/home_screen/widgets/mainCategoryCard.dart';
import 'package:flutter/material.dart';

String pincode = "605006";

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final _formpincode = GlobalKey<FormState>();
  TextEditingController pincodeController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
          appBar: _titleAndSearchSection(context),
          body: SingleChildScrollView(
            child: Column(
              children: [
                _homeMainCategorySection(),
                SizedBox(
                  height: 10,
                ),
                MainCategoryCard(),
                SizedBox(
                  height: 10,
                ),
                _buildIconWithTextSection(),
                SizedBox(
                  height: 10,
                ),
                _buildImageTextSectionOne(),
                SizedBox(
                  height: 10,
                ),
                _buildImageTextSectionTwo(),
                SizedBox(
                  height: 10,
                ),
                Container(
                  height: 18,
                  width: screenWidth,
                  decoration: BoxDecoration(
                    color: ColorConstants.MAIN_BLACK,
                  ),
                  child: Row(
                    children: [
                      Text(
                        "CRED",
                        style: TextStyle(
                            color: ColorConstants.MAIN_WHITE,
                            fontSize: 10,
                            fontWeight: FontWeight.w600),
                      ),
                      Text(
                        "|",
                        style: TextStyle(
                            color: ColorConstants.MAIN_WHITE,
                            fontSize: 10,
                            fontWeight: FontWeight.w300),
                      ),
                      RichText(
                          text: TextSpan(
                        text: "Get cashback up to ",
                        style: TextStyle(
                            color: ColorConstants.MAIN_WHITE,
                            fontSize: 8,
                            fontWeight: FontWeight.w300),
                      ))
                    ],
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
              ],
            ),
          )),
    );
  }

  SizedBox _buildImageTextSectionTwo() {
    return SizedBox(
      height: 110,
      child: Padding(
        padding: const EdgeInsets.only(left: 5),
        child: ListView.separated(
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) => ImageTextCard(
                imageUrl: DummyDb.imageAndTextListTwo[index]["image"],
                textData: DummyDb.imageAndTextListTwo[index]["textData"]),
            separatorBuilder: (context, index) => SizedBox(
                  width: 8,
                ),
            itemCount: DummyDb.imageAndTextListTwo.length),
      ),
    );
  }

  Padding _buildImageTextSectionOne() {
    return Padding(
      padding: const EdgeInsets.only(left: 8),
      child: SizedBox(
        height: 110,
        child: ListView.separated(
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) => ImageTextCard(
                imageUrl: DummyDb.imageAndTextListOne[index]["image"],
                textData: DummyDb.imageAndTextListOne[index]["textData"]),
            separatorBuilder: (context, index) => SizedBox(
                  width: 10,
                ),
            itemCount: DummyDb.imageAndTextListOne.length),
      ),
    );
  }

  Row _buildIconWithTextSection() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Row(
          children: [
            CircleAvatar(
              radius: 10,
              backgroundColor: ColorConstants.LIGHT_BLUE.withOpacity(.5),
              child: Icon(
                Icons.assignment_returned_outlined,
                color: ColorConstants.PRIMARY_COLOR,
                size: 17,
              ),
            ),
            Text(
              "Easy Return",
              style: TextStyle(fontSize: 10),
            )
          ],
        ),
        Text(
          "|",
        ),
        Row(
          children: [
            CircleAvatar(
              radius: 10,
              backgroundColor: ColorConstants.LIGHT_BLUE.withOpacity(.5),
              child: Icon(
                Icons.local_shipping_outlined,
                color: ColorConstants.PRIMARY_COLOR,
                size: 17,
              ),
            ),
            Text(
              "Free Delivery Above ₹2999*",
              style: TextStyle(fontSize: 10),
            )
          ],
        ),
        Text("|"),
        Row(
          children: [
            CircleAvatar(
              radius: 10,
              backgroundColor: ColorConstants.LIGHT_BLUE.withOpacity(.5),
              child: Icon(
                Icons.credit_card_rounded,
                color: ColorConstants.PRIMARY_COLOR,
                size: 17,
              ),
            ),
            Text(
              "Secure Payment",
              style: TextStyle(fontSize: 10),
            )
          ],
        ),
      ],
    );
  }

  Padding _homeMainCategorySection() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: GridView.builder(
          shrinkWrap: true,
          physics: NeverScrollableScrollPhysics(),
          itemCount: 8,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 4,
            crossAxisSpacing: 15,
            mainAxisSpacing: 8,
            childAspectRatio: 3 / 5,
          ),
          itemBuilder: (context, index) => CategoryCard(
              cateImage: DummyDb.homeFirstCategory[index]["image"],
              cateName: DummyDb.homeFirstCategory[index]["catogoryName"])),
    );
  }

  PreferredSize _titleAndSearchSection(BuildContext context) {
    return PreferredSize(
      preferredSize: Size.fromHeight(85),
      child: Column(
          //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  height: 30,
                  width: 130,
                  margin: EdgeInsets.only(left: 8, right: 8),
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: NetworkImage(
                              "https://upload.wikimedia.org/wikipedia/commons/thumb/e/e5/Decathlon_Logo24.svg/2560px-Decathlon_Logo24.svg.png"),
                          fit: BoxFit.fill)),
                ),
                Row(
                  children: [
                    Text(
                      "Delivery Location",
                      style: TextStyle(fontSize: 10),
                    ),
                    SizedBox(
                      width: 4,
                    ),
                    Text(pincode,
                        style: TextStyle(
                            fontSize: 10, color: ColorConstants.PRIMARY_COLOR)),
                    TextButton(
                        onPressed: () {
                          setState(() {});
                          _pincodeChangeBottomSheetSection(context);
                        },
                        child: Text(
                          "CHANGE",
                          style: TextStyle(
                              fontSize: 10,
                              decoration: TextDecoration.underline,
                              color: ColorConstants.PRIMARY_COLOR),
                        )),
                  ],
                ),
              ],
            ),
            Row(
              children: [
                SizedBox(
                  width: 15,
                ),
                Expanded(
                  child: Container(
                    height: 30,
                    decoration: BoxDecoration(
                        color: ColorConstants.LIGHT_GREY.withOpacity(.3),
                        borderRadius: BorderRadius.circular(12)),
                    child: Center(
                      child: TextField(
                        decoration: InputDecoration(
                            contentPadding: EdgeInsets.symmetric(
                                horizontal: 10, vertical: 12),
                            border: InputBorder.none,
                            hintText: "Search for 'Rain Coat'",
                            hintStyle: TextStyle(fontSize: 15),
                            prefixIcon: Icon(
                              Icons.search_outlined,
                              size: 18,
                            ),
                            suffixIcon: Icon(
                              Icons.mic_none_outlined,
                              size: 18,
                            )),
                      ),
                    ),
                  ),
                ),
                Row(
                  children: [
                    IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.favorite_border_outlined,
                        color: ColorConstants.MAIN_BLACK,
                      ),
                    ),
                    IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.shopping_cart_outlined,
                          color: ColorConstants.MAIN_BLACK,
                        ))
                  ],
                ),
              ],
            )
          ]),
    );
  }

  Future<dynamic> _pincodeChangeBottomSheetSection(BuildContext context) {
    return showModalBottomSheet(
        // useSafeArea: true,
        shape: BeveledRectangleBorder(),
        context: context,
        builder: (context) => Container(
              margin: EdgeInsets.symmetric(horizontal: 10),
              child: Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Align(
                        alignment: Alignment.topRight,
                        child: IconButton(
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            icon: Icon(
                              Icons.close,
                              color: ColorConstants.MAIN_BLACK,
                            ))),
                    Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage(
                                  "assets/image/Screenshot_2024-09-04-11-57-43-043_com.evamall.evacustomer-01.jpeg"),
                              fit: BoxFit.cover)),
                    ),
                    Text("For a seamless shopping experience!"),
                    Container(
                      padding:
                          EdgeInsets.symmetric(horizontal: 20, vertical: 8),
                      decoration:
                          BoxDecoration(color: ColorConstants.PRIMARY_COLOR),
                      child: Text(
                        "LOGIN",
                        style: TextStyle(
                            color: ColorConstants.MAIN_WHITE,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    Divider(
                      color: ColorConstants.MAIN_BLACK.withOpacity(.3),
                      thickness: 1,
                      indent: 10,
                      endIndent: 10,
                    ),
                    Align(
                      alignment: Alignment.topLeft,
                      child: Text(
                        "Enter a pincode",
                        style: TextStyle(fontWeight: FontWeight.w900),
                        textAlign: TextAlign.start,
                      ),
                    ),
                    Form(
                      key: _formpincode,
                      child: Container(
                        color: ColorConstants.LIGHT_GREY.withOpacity(.3),
                        height: 50,
                        child: TextFormField(
                          keyboardType: TextInputType.number,
                          controller: pincodeController,
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Please enter a pincode';
                            }
                            if (!RegExp(r'^[1-9][0-9]{5}$').hasMatch(value)) {
                              return 'Please enter a valid 6-digit pincode';
                            }
                          },
                          style: TextStyle(color: ColorConstants.MAIN_BLACK),
                          decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: "Eg : 605006",
                              hintStyle: TextStyle(
                                  color: ColorConstants.GREY,
                                  fontSize: 14,
                                  fontWeight: FontWeight.normal),
                              suffixIcon: IconButton(
                                  onPressed: () {
                                    setState(() {});
                                    if (_formpincode.currentState!.validate()) {
                                      pincode = pincodeController.text;
                                      Navigator.pop(context);
                                    }
                                  },
                                  icon: Icon(
                                    Icons.arrow_forward,
                                    color: ColorConstants.PRIMARY_COLOR,
                                  ))),
                        ),
                      ),
                    ),
                    Divider(
                      color: ColorConstants.MAIN_BLACK.withOpacity(.3),
                      thickness: 1,
                      indent: 10,
                      endIndent: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          width: 300,
                          padding: EdgeInsets.symmetric(horizontal: 15),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Device location is turned off",
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              Text(
                                "Enable location to enhance your In-store experience & to help us provide personalzed offers by using background location sometimes",
                                textAlign: TextAlign.justify,
                                style: TextStyle(fontSize: 10),
                              ),
                            ],
                          ),
                        ),
                        CircleAvatar(
                          backgroundColor: ColorConstants.LIGHT_GREY,
                          child: Icon(
                            Icons.location_on_outlined,
                            color: ColorConstants.PRIMARY_COLOR,
                          ),
                        )
                      ],
                    ),
                    Container(
                      margin: EdgeInsets.symmetric(vertical: 8),
                      padding:
                          EdgeInsets.symmetric(vertical: 10, horizontal: 80),
                      decoration: BoxDecoration(
                        border: Border.all(color: ColorConstants.GREY),
                      ),
                      child: Text("ENABLE DEVICE LOCATION"),
                    )
                  ]),
            ));
  }
}
