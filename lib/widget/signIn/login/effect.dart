import 'package:fish_redux/fish_redux.dart';
import 'package:lottery_winning/widget/test/page.dart';
import 'action.dart';
import 'state.dart';
import 'package:flutter/material.dart';
import 'package:lottery_winning/export.dart';

Effect<loginState> buildEffect() {
  return combineEffects(<Object, Effect<loginState>>{
    loginAction.action: _onAction,
    loginAction.tapScreenPage: _tapScreenPage,
    loginAction.tapRegister: _tapRegister,
    loginAction.authToSina: _authToSina,
  });
}

void _onAction(Action action, Context<loginState> ctx) {}

void _tapScreenPage(Action action, Context<loginState> ctx) {
  Navigator.pushNamedAndRemoveUntil(
      ctx.context, "/screenPage", (routes) => false);
}

//跳转注册页面
void _tapRegister(Action action, Context<loginState> ctx) {
   Navigator.pushNamed(ctx.context, '/register');
  //Navigator.push(ctx.context, MaterialPageRoute(builder: (context) =>testPage().buildPage(null)),);
}

void _authToSina(Action action, Context<loginState> ctx) {
  ShareSDK.getUserInfo(
    ShareSDKPlatforms.qq,
        (SSDKResponseState state, Map userdata, SSDKError error) {
      showAlert(state, error.rawData, ctx.context);
    },
  );
}

void showAlert(SSDKResponseState state, Map content, BuildContext context) {
  String title = "失败";
  print(state);
  switch (state) {
    case SSDKResponseState.Success:
      title = "成功";
      Navigator.pushNamedAndRemoveUntil(
          context, "/screenPage", (routes) => false);
      break;
    case SSDKResponseState.Fail:
      print("失败");
      break;
    case SSDKResponseState.Cancel:
      print("取消");
      break;
    default:
      print(state.toString());
      break;
  }
//
//    showDialog(
//        context: context,
//        builder: (BuildContext context) =>
//            CupertinoAlertDialog(
//                title: new Text(title),
//                content: new Text(content != null ? content.toString() : ""),
//                actions: <Widget>[
//                  new FlatButton(
//                    child: new Text("OK"),
//                    onPressed: () {
//                      Navigator.of(context).pop();
//                    },
//                  )
//                ]
//            ));
}
