import 'package:flutter/material.dart';

class PlanProviderMode with ChangeNotifier {
  List<Tab> _tabBar = [
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

  List<Tab> get tabValue => _tabBar;

  //追号计划详情
  void onTapPlanPages(context) {
    Navigator.pushNamed(context, "/planPages");
  }
}
