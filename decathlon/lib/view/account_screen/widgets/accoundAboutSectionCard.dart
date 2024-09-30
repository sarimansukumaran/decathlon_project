import 'package:decathlon/utils/constants/color_constants.dart';
import 'package:flutter/material.dart';

class AccountAboutSectionCard extends StatelessWidget {
  AccountAboutSectionCard({
    required this.titleText,
    required this.subTitle,
    this.tohave = true,
    super.key,
  });
  bool tohave;
  String titleText;
  String subTitle;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      decoration: BoxDecoration(
          color: ColorConstants.MAIN_WHITE,
          border: Border.all(color: ColorConstants.LIGHT_GREY, width: 1)),
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(titleText,
                  style: TextStyle(
                      color: ColorConstants.MAIN_BLACK,
                      fontSize: 19,
                      fontWeight: FontWeight.w600)),
              Text(
                subTitle,
                style: TextStyle(
                    color: ColorConstants.MAIN_BLACK,
                    fontSize: 12,
                    fontWeight: FontWeight.normal),
              ),
            ],
          ),
          tohave
              ? IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.chevron_right_outlined,
                    color: ColorConstants.DARK_GREY,
                  ))
              : SizedBox()
        ],
      ),
    );
  }
}
