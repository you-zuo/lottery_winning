import 'package:fish_redux/fish_redux.dart';

import 'effect.dart';
import 'reducer.dart';
import 'state.dart';
import 'view.dart';

class msgPage extends Page<msgState, Map<String, dynamic>> {
  msgPage()
      : super(
            initState: initState,
            effect: buildEffect(),
            reducer: buildReducer(),
            view: buildView,
            dependencies: Dependencies<msgState>(
                adapter: null,
                slots: <String, Dependent<msgState>>{
                }),
            middleware: <Middleware<msgState>>[
            ],);

}
