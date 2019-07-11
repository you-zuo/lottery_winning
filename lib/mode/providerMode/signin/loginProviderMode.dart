import 'package:flutter/material.dart';
import 'package:lottery_winning/export.dart';
import 'package:lottery_winning/export.dart' as prefix0;

class LoginProviderMode with ChangeNotifier {
  //跳转注册
  void onTapRegister(context) async {
    // Navigator.pushNamed(context, "/registerPage");
    // HttpUtils.getHttp(
    //   url: "http://h.playdota.cc/api/Topic/get_topic_list",
    //   onCallBack: (v) {
    //     printUtil.print(v);
    //   },
    // );

    var result = await HttpUtils.request(
        'http://www.bilibiliaaaaaa.com',
        method: HttpUtils.GET);
        
    printUtil.print(result);
  }

  //登录
  void onTapLogin(context, String phone, String passWord) {
    if (phone.length != null && passWord.length != null) {
      printUtil.print("phone${phone},passWord${passWord}");
      Navigator.pushNamedAndRemoveUntil(
          context, "/screenPage", (routes) => false);
    }
  }
}
