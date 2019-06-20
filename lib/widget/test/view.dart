import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/material.dart';
import 'package:lottery_winning/export.dart';
import 'action.dart';
import 'state.dart';

//纯界面 dispatch处理点击时间

Widget buildView(testState state, Dispatch dispatch, ViewService viewService) {
  return BaseAppBarNolife(
    "fish_redux",
    Container(
      child: ListView.builder(
        itemCount: state.userList.length,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () => dispatch(testActionCreator.tapAction()),
            child: Card(
              child: ListTile(
                leading: Text("编号" + state.userList[index].times),
              ),
            ),
          );
        },
      ),
    ),
  );
}
