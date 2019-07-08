import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/material.dart';
import 'package:lottery_winning/export.dart';
import 'action.dart';
import 'state.dart';

Widget buildView(
    PlayerState state, Dispatch dispatch, ViewService viewService) {
  return Container(
    color: Colors.white,
    // height: 400, // 这里随意
    child: ListView(
      children: <Widget>[
        Container(
          height: 400,
          child: IjkPlayer(
            mediaController: state.controller,
          ),
        ),
        FlatButton(
          onPressed: () => dispatch(
                PlayerActionCreator.onPlayer(state.controller),
              ),
          child: Text("点击播放"),
        )
      ],
    ),
  );
}
