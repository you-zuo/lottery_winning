import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/material.dart';
import 'package:lottery_winning/export.dart';
import 'action.dart';
import 'state.dart';

Widget buildView(settingState state, Dispatch dispatch, ViewService viewService) {
  return BaseAppBarNolife(
      "设置",
      Container(
        padding: EdgeInsets.symmetric(
            horizontal: ScreenUtil.getInstance().setWidth(20)),
        child: ListView(
          children: <Widget>[
            Container(
              padding: EdgeInsets.symmetric(
                  vertical: ScreenUtil.getInstance().setWidth(15)),
              decoration: BoxDecoration(
                border: Border(
                  bottom:
                  BorderSide(color: Color(AppColors.viewGray), width: 2),
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    "关于我们",
                    style: Appstyle.BlackGrey14,
                  ),
                  Image.asset("assets/images/r.png")
                ],
              ),
            ),
            Container(
              decoration: BoxDecoration(
                border: Border(
                  bottom:
                  BorderSide(color: Color(AppColors.viewGray), width: 2),
                ),
              ),
              padding: EdgeInsets.symmetric(
                  vertical: ScreenUtil.getInstance().setWidth(15)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    "使用条款和隐私政策",
                    style: Appstyle.BlackGrey14,
                  ),
                  Image.asset("assets/images/r.png")
                ],
              ),
            ),
            Container(
              decoration: BoxDecoration(
                border: Border(
                  bottom:
                  BorderSide(color: Color(AppColors.viewGray), width: 2),
                ),
              ),
              padding: EdgeInsets.symmetric(
                  vertical: ScreenUtil.getInstance().setWidth(15)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    "清理缓存",
                    style: Appstyle.BlackGrey14,
                  ),
                  Image.asset("assets/images/r.png")
                ],
              ),
            ),
          ],
        ),
      ));
}
