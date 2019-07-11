import 'package:lottery_winning/export.dart';
import 'package:flutter/material.dart';
import 'package:lottery_winning/widget/SplashPage.dart';
import 'package:lottery_winning/export.dart';

//配置路由
final routes = {
  '/': (context) => SplashActivity(),
  '/screenPage': (context) => ScreenPage(),
  '/loginPage': (context) => LoginPage(),
  '/registerPage': (context) => RegisterPage(),
  '/homePage': (context) => HomePage(),
  '/myPage': (context) => MyPage(),
  '/planPage': (context) => PlanPage(),
  '/planPages': (context) => PlanPages(),
  '/msgPage': (context) => MsgPage(),
  '/personalDataPage': (context) => PersonalDataPage(),
  '/homeDetailsPage': (context,{arguments}) => HomeDetailsPage(arguments:arguments),
};

// ignore: strong_mode_top_level_function_literal_block
var onGenerateRoute = (RouteSettings settings) {
  //统一处理
  final String name = settings.name;
  final Function pageContentBuilder = routes[name];
//  fish_redux用这个方法传参有问题，需要穿参的跳转不需要在这里配置路由

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