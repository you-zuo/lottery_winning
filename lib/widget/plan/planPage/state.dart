import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/material.dart'
    hide TabController, Tab, TabBar, TabBarView, NestedScrollView;
import 'package:lottery_winning/utils/newTabs.dart';
import 'package:lottery_winning/utils/TabController.dart';

class PlanPageState implements Cloneable<PlanPageState> {
  List<Tab> tabBars = new List<Tab>();

  PlanPageState({this.tabBars});

  @override
  PlanPageState clone() {
    return PlanPageState();
  }
}

PlanPageState initState(Map<String, dynamic> args) {
  List<Tab> tabBar;
  tabBar = [
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
      text: "高频彩",
    ),
    Tab(
      text: "境外彩",
    ),
  ];
  return PlanPageState(tabBars:tabBar);
}
