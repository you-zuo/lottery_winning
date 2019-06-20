import 'package:fish_redux/fish_redux.dart';

class personalDataState implements Cloneable<personalDataState> {

  @override
  personalDataState clone() {
    return personalDataState();
  }
}

personalDataState initState(Map<String, dynamic> args) {
  return personalDataState();
}
