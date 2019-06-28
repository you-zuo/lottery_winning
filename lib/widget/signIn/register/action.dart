import 'package:fish_redux/fish_redux.dart';

//TODO replace with your own action
enum registerAction { action, goBack}

class registerActionCreator {
  static Action onAction(userName, passWord, passWords, phone, email, qq) {
    Map<String, dynamic> payload = {
      "userName": userName,
      "passWord": passWord,
      "passWords": passWords,
      "phone": phone,
      "email": email,
      "qq": qq,
    };
    return Action(registerAction.action, payload: payload);
  }

  static Action onGoBack() {
    return const Action(registerAction.goBack);
  }
}
