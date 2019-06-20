import 'package:fish_redux/fish_redux.dart';

class settingState implements Cloneable<settingState> {

  @override
  settingState clone() {
    return settingState();
  }
}

settingState initState(Map<String, dynamic> args) {
  return settingState();
}
