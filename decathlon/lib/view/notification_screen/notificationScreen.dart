import 'package:decathlon/utils/constants/color_constants.dart';
import 'package:flutter/material.dart';

class NotificationScreen extends StatelessWidget {
  const NotificationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            "Notifications",
            style: TextStyle(
                fontWeight: FontWeight.w500, color: ColorConstants.MAIN_BLACK),
          ),
          bottom: PreferredSize(
            preferredSize: Size.fromHeight(50.0),
            child: Container(
              color: ColorConstants.PRIMARY_COLOR,
              child: TabBar(
                  indicatorWeight: 5,
                  indicatorSize: TabBarIndicatorSize.tab,
                  indicatorColor: ColorConstants.MAIN_WHITE,
                  tabs: [
                    Tab(
                      child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: 5),
                        child: Text(
                          "ALL",
                          style: TextStyle(
                              color: ColorConstants.MAIN_WHITE,
                              fontWeight: FontWeight.w600,
                              fontSize: 14),
                        ),
                      ),
                    ),
                    Tab(
                      child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: 5),
                        child: Text(
                          "OTHERS",
                          style: TextStyle(
                              color: ColorConstants.MAIN_WHITE,
                              fontWeight: FontWeight.w600,
                              fontSize: 14),
                        ),
                      ),
                    ),
                    Tab(
                      child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: 5),
                        child: Text(
                          "REMINDERS",
                          style: TextStyle(
                              color: ColorConstants.MAIN_WHITE,
                              fontWeight: FontWeight.w600,
                              fontSize: 14),
                        ),
                      ),
                    ),
                  ]),
            ),
          ),
        ),
        body: TabBarView(
          children: [
            Center(child: Text("No message(s) to show")),
            Center(child: Text("No message(s) to show")),
            Center(child: Text("No message(s) to show")),
          ],
        ),
      ),
    );
  }
}
