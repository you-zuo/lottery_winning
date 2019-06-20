import 'package:fish_redux/fish_redux.dart';
import 'package:lottery_winning/home_bean_entity.dart';

//页面初始化的地方，用于配置初始值

class testState implements Cloneable<testState> {
  testState({this.userList});

  List<HomeBeanDataData> userList = new List<HomeBeanDataData>();

  @override
  testState clone() {
    return testState();
  }
}

testState initState(Map<String, dynamic> args) {
  List<HomeBeanDataData> tempList = new List<HomeBeanDataData>();
  HomeBeanDataData user = new HomeBeanDataData();
  user.nickname = "梁二狗";
  user.id = 1;
  user.times = '14:53';
  tempList.add(user);
  return testState(userList: tempList);
}
