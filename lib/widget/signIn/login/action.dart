import 'package:fish_redux/fish_redux.dart';

//TODO replace with your own action
enum loginAction { action, tapScreenPage, tapRegister, authToSina }

class loginActionCreator {
  static Action onAction() {
    return const Action(loginAction.action);
  }

  static Action onTapScreenPage(accountNumber,passWord) {
    Map<String, dynamic> payload = {
      "accountNumber": accountNumber,
      "passWord": passWord
    };
    return Action(loginAction.tapScreenPage,payload:payload);
  }

  //跳转到注册页面
  static Action onTapRegister() {
    return const Action(loginAction.tapRegister);
  }

  //跳转qq登录
  static Action onAuthToSina() {
    return const Action(loginAction.authToSina);
  }

}
