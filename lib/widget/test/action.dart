import 'package:fish_redux/fish_redux.dart';
import 'package:lottery_winning/home_bean_entity.dart';



//Action定义一种行为，可以携带信息，发往Store。
// 换言之Store发生改变须由Action触发，
// Fish redux 有以下约定：Action 包含两个字段type和payload；
// 推荐写法是在action.dart里定义一个type枚举类和一个ActionCreator类，这样有利于约束payload的类型。

//TODO replace with your own action
enum testAction { action,tap }

class testActionCreator {
  static Action updateAction(List<HomeBeanDataData> userList) {
    print("由effect请求后");
    return  Action(testAction.action, payload: userList);
  }
  static Action tapAction() {
    return  Action(testAction.tap);
  }
}
