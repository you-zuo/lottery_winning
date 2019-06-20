import 'package:fish_redux/fish_redux.dart';

import 'effect.dart';
import 'reducer.dart';
import 'state.dart';
import 'view.dart';

class personalDataPage extends Page<personalDataState, Map<String, dynamic>> {
  personalDataPage()
      : super(
            initState: initState,
            effect: buildEffect(),
            reducer: buildReducer(),
            view: buildView,
            dependencies: Dependencies<personalDataState>(
                adapter: null,
                slots: <String, Dependent<personalDataState>>{
                }),
            middleware: <Middleware<personalDataState>>[
            ],);

}
