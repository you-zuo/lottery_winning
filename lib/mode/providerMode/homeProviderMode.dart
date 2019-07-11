import 'package:flutter/material.dart';

class HomeProviderMode with ChangeNotifier {
  List<Widget> _images = [
    Image.asset(
      "assets/images/Dice1.png",
      fit: BoxFit.cover,
    ),
    Image.asset(
      "assets/images/Dice2.png",
      fit: BoxFit.cover,
    ),
    Image.asset(
      "assets/images/Dice3.png",
      fit: BoxFit.cover,
    )
  ];

  List<Tab> _tabs = [
    Tab(
      text: "热门彩",
    ),
    Tab(
      text: "高频彩",
    ),
    Tab(
      text: "境外彩",
    ),
    Tab(
      text: "全国彩",
    ),
    Tab(
      text: "全国彩",
    ),
  ];

  List<Tab> get tabValue => _tabs;

  List<Widget> get imageValue => _images;

  void pushDetails(context, Map) {
    Navigator.pushNamed(
      context,
      "/homeDetailsPage",
      arguments:Map,
    );
  }
}
