import 'package:decathlon/utils/constants/color_constants.dart';
import 'package:decathlon/view/bottom_navbar_section/bottom_navbar_section.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    Future.delayed(Duration(seconds: 3)).then((value) {
      Navigator.pushReplacement(context,
          MaterialPageRoute(builder: (context) => BottomNavbarSection()));
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConstants.PRIMARY_COLOR,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SizedBox(
            height: 50,
          ),
          Center(
            child: Image(
              image: AssetImage("assets/image/logo-decathlon-white.png"),
              height: 50,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Icon(
              Icons.location_on_outlined,
              color: ColorConstants.MAIN_WHITE,
              size: 30,
              weight: 20,
            ),
          )
        ],
      ),
    );
  }
}
