import 'package:decathlon/utils/constants/color_constants.dart';
import 'package:decathlon/view/account_screen/widgets/accoundAboutSectionCard.dart';
import 'package:flutter/material.dart';

class AccountScreen extends StatelessWidget {
  const AccountScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: ColorConstants.LIGHT_GREY.withOpacity(.2),
        floatingActionButtonLocation: FloatingActionButtonLocation.endTop,
        floatingActionButton: Padding(
          padding: const EdgeInsets.all(8.0),
          child: IconButton(
            icon: Icon(
              Icons.shopping_cart_outlined,
              size: 30,
            ),
            onPressed: () {},
          ),
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 80),
                Container(
                  height: 100,
                  //margin: EdgeInsets.symmetric(horizontal: 20),
                  decoration: BoxDecoration(
                      color: ColorConstants.LIGHT_GREY.withOpacity(.1),
                      border: Border.all(
                          color: ColorConstants.LIGHT_GREY, width: 1)),
                  child: Center(
                      child: Container(
                    height: 40,
                    width: 110,
                    color: ColorConstants.PRIMARY_COLOR,
                    child: Center(
                      child: Text(
                        "LOGIN",
                        style: TextStyle(
                            color: ColorConstants.MAIN_WHITE,
                            fontWeight: FontWeight.w600,
                            fontSize: 17),
                      ),
                    ),
                  )),
                ),
                SizedBox(
                  height: 30,
                ),
                Text(
                  "About",
                  style: TextStyle(fontSize: 18),
                ),
                SizedBox(
                  height: 30,
                ),
                AccountAboutSectionCard(
                  titleText: "App Version",
                  subTitle: "3.30.4(It's up-to-date)",
                  tohave: false,
                ),
                AccountAboutSectionCard(
                  titleText: "Terms & Conditions",
                  subTitle: "All the stuff you need to know",
                ),
                AccountAboutSectionCard(
                  titleText: "Privacy Policy",
                  subTitle: "Important for both of us",
                ),
                AccountAboutSectionCard(
                  titleText: "Return policy",
                  subTitle: "Very important for you;)",
                ),
                AccountAboutSectionCard(
                  titleText: "Support",
                  subTitle: "How can we help you?",
                ),
                SizedBox(
                  height: 150,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
