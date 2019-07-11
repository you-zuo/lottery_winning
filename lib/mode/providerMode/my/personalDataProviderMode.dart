import 'package:flutter/material.dart';
import 'package:lottery_winning/export.dart';

class PersonalDataProviderMode with ChangeNotifier {
  //头像上传
  void uploadImage() {
    PickerImage().getImage(
      onCallBack: (v) {
        printUtil.print(v);
        // ctx.dispatch(personalDataActionCreator.onAction("assets/images/Dice2.png"));
      },
    );
  }

  //退出登录
  void logOut(context) {
    BaseDialog(context, "确定要退出登录吗？", color: Colors.red).dialog();
  }
}
