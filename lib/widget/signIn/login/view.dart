import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/material.dart';
import 'action.dart';
import 'state.dart';
import 'package:lottery_winning/export.dart';

Widget buildView(loginState state, Dispatch dispatch, ViewService viewService) {
  //初始化分辨率适配ScreeUtil
  ScreenUtil.instance =
      ScreenUtil(width: 375, height: 667, allowFontScaling: false)
        ..init(viewService.context);

  TextEditingController _textEditingController = TextEditingController();
  TextEditingController _textEditingControllers = TextEditingController();

  return BaseAppBarNolife(
    " ",
    Container(
      color: Colors.white,
      child: ListView(
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              //log图
              Container(
                margin: EdgeInsets.only(
                    top: ScreenUtil.getInstance().setWidth(107) -
                        ScreenUtil.statusBarHeight),
                child: Image.asset(
                  "assets/images/log.png",
                  width: ScreenUtil.getInstance().setWidth(144),
                  height: ScreenUtil.getInstance().setWidth(58),
                  fit: BoxFit.cover,
                ),
              ),
            ],
          ),
          //输入用户名
          Container(
            margin: EdgeInsets.only(
                left: ScreenUtil.getInstance().setWidth(23),
                right: ScreenUtil.getInstance().setWidth(23),
                top: ScreenUtil.getInstance().setWidth(50)),
            decoration: BoxDecoration(
              border: Border(
                bottom: BorderSide(
                  color: Color(AppColors.viewGray),
                  width: 1,
                ),
              ),
            ),
            child: TextField(
              controller: _textEditingController,
              maxLines: 1,
              decoration: InputDecoration(
                border: InputBorder.none,
                hintText: "请输入用户名",
                hintStyle: Appstyle.hitTextStyle,
              ),
            ),
          ),
          //输入密码
          Container(
            margin: EdgeInsets.only(
                left: ScreenUtil.getInstance().setWidth(23),
                right: ScreenUtil.getInstance().setWidth(23)),
            decoration: BoxDecoration(
              border: Border(
                bottom: BorderSide(
                  color: Color(AppColors.viewGray),
                  width: 1,
                ),
              ),
            ),
            child: TextField(
              controller: _textEditingControllers,
              maxLines: 1,
              obscureText: true,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                border: InputBorder.none,
                hintText: "请输入密码",
                hintStyle: Appstyle.hitTextStyle,
              ),
            ),
          ),
          //登录按钮
          Container(
            margin: EdgeInsets.symmetric(
                horizontal: ScreenUtil.getInstance().setWidth(23),
                vertical: ScreenUtil.getInstance().setWidth(10)),
            child: FlatButton(
              color: Color(AppColors.loginButton),
              onPressed: () {
                dispatch(loginActionCreator.onTapScreenPage());
              },
              child: Text(
                S.of(viewService.context).login,
                style: Appstyle.witTextStyle,
              ),
            ),
          ),
          //点击注册
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              GestureDetector(
                onTap: () => dispatch(loginActionCreator.onTapRegister()),
                child: Text(
                  S.of(viewService.context).ClickToRegister,
                  style: Appstyle.hitTextStyle,
                ),
              ),
              SizedBox(
                width: ScreenUtil.getInstance().setWidth(23),
              )
            ],
          ),
          SizedBox(
            height: ScreenUtil.getInstance().setWidth(10),
          ),
          //请第三方账号登录
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                S.of(viewService.context).PartyLogin,
                style: Appstyle.hitTextStyle,
              )
            ],
          ),
          SizedBox(
            height: ScreenUtil.getInstance().setWidth(10),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              GestureDetector(
                onTap: () => dispatch(loginActionCreator.onAuthToSina()),
                child: Image.asset(
                  "assets/images/penguin.png",
                  width: ScreenUtil.getInstance().setWidth(41),
                  height: ScreenUtil.getInstance().setWidth(41),
                ),
              )
            ],
          ),
        ],
      ),
    ),
  );
}
