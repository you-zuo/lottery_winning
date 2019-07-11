import 'package:flutter/material.dart';
import 'package:lottery_winning/export.dart';
import 'package:lottery_winning/export.dart' as prefix0;
import 'package:lottery_winning/mode/home_data_entity.dart';

class LoginProviderMode with ChangeNotifier {
  //跳转注册
  void onTapRegister(context) async {
    // Navigator.pushNamed(context, "/registerPage");

    var result = await HttpUtils.request(
        HttpUtils.API_PREFIX + "/api/Topic/get_topic_list",
        method: HttpUtils.GET);
    if (result != null) {
      List<HomeDataDataData> data = HomeDataEntity.fromJson(result).data.data;
    }
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
