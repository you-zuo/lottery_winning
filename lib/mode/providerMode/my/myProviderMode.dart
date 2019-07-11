import 'package:flutter/material.dart';

class MyProviderMode with ChangeNotifier {
  //我的订单
  void onTapOrder() {}

  //关于我们
  void onTapAbout() {}

  //意见反馈
  void onTapFeedback() {}

  //分享给朋友
  void onTapShare() {}

  //设置
  void onTapSetting(context) {
     Navigator.pushNamed(context, "/settingPage");
  }

  //个人资料
  void onTapPersonalData(context) {
    Navigator.pushNamed(context, "/personalDataPage");
  }

  //消息
  void onTapMsg(context) {
    Navigator.pushNamed(context, "/msgPage");
  }
}
