import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/material.dart';
class HomeState implements Cloneable<HomeState> {

  HomeState({this.imagesList,this.tabBars});
  List<Widget> imagesList;
  List<Tab> tabBars;

  @override
  HomeState clone() {
    return HomeState();
  }
}

HomeState initState(Map<String, dynamic> args) {

  List<Widget> images = [
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

  List<Tab> tabs = [
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
  return HomeState(imagesList: images,tabBars: tabs);
}
