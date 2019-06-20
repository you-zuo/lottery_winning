import 'package:fish_redux/fish_redux.dart';

import 'effect.dart';
import 'reducer.dart';
import 'state.dart';
import 'view.dart';


//Page可以看成是一个容器，它用来配置聚合State，Effect，Reduce，View，Dependencies等。

class testPage extends Page<testState, Map<String, dynamic>> {
  testPage()
      : super(
            initState: initState,
            effect: buildEffect(),
            reducer: buildReducer(),
            view: buildView,
            dependencies: Dependencies<testState>(
                adapter: null,
                slots: <String, Dependent<testState>>{
                }),
            middleware: <Middleware<testState>>[
            ],);

}
