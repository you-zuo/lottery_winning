import 'package:fish_redux/fish_redux.dart';

import 'package:flutter/material.dart'
    hide TabController, Tab, TabBar, TabBarView, NestedScrollView;
import 'package:lottery_winning/utils/TabController.dart';
import 'package:lottery_winning/utils/newTabs.dart';
class HomeState implements Cloneable<HomeState> {
  HomeState({this.imagesList, this.tabBars});

  List<Widget> imagesList;
  List<Tab> tabBars;
  TabController tabController;
  ScrollController scrollViewController;

  @override
  HomeState clone() {
    return HomeState()
      ..tabController = tabController
      ..scrollViewController = scrollViewController;
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
  return HomeState(imagesList: images, tabBars: tabs)
    ..scrollViewController = new ScrollController()
    ..tabController = TabController(
      length: tabs.length,
      vsync: ScrollableState(),
    );
}
