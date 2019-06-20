import 'package:lottery_winning/export.dart';
import 'package:flutter/material.dart';

//配置路由
final routes = {
  '/': (context) => loginPage().buildPage(null),
  '/screenPage': (context) => ScreenPage(),
  '/register': (context) => registerPage().buildPage(null),
  '/myPage': (context) => myPage().buildPage(null),
  '/homePage': (context) => HomePage().buildPage(null),
  '/planPage': (context) => PlanPagePage().buildPage(null),
  '/planPages': (context) => PlanPagesPage().buildPage(null),
  '/purchasePage': (context) => PurchasePage().buildPage(null),
  '/msgPage': (context) => msgPage().buildPage(null),
  '/settingPage': (context) => settingPage().buildPage(null),
  '/personalDataPage': (context) => personalDataPage().buildPage(null),
};

// ignore: strong_mode_top_level_function_literal_block
var onGenerateRoute = (RouteSettings settings) {
  //统一处理
  final String name = settings.name;
  final Function pageContentBuilder = routes[name];
  if (pageContentBuilder != null) {
    if (settings.arguments != null) {
      final Route route = MaterialPageRoute(
        builder: (context) =>
            pageContentBuilder(context, arguments: settings.arguments),
      );
      return route;
    } else {
      final Route route = MaterialPageRoute(
        builder: (context) => pageContentBuilder(context),
      );
      return route;
    }
  }
};
