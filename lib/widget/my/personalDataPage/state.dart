import 'package:fish_redux/fish_redux.dart';
import 'package:lottery_winning/export.dart';

class personalDataState implements Cloneable<personalDataState> {
  String image = "assets/images/Dice1.png";

  @override
  personalDataState clone() {
    return personalDataState()..image;
  }
}

personalDataState initState(Map<String, dynamic> args) {
  return personalDataState();
}
