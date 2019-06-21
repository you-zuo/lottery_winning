import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/material.dart';
import 'package:lottery_winning/export.dart';
import 'action.dart';
import 'state.dart';

Widget buildView(
    registerState state, Dispatch dispatch, ViewService viewService) {
  //账号控制器
  TextEditingController _userNameController = TextEditingController();
  //密码控制器
  TextEditingController _passWordController = TextEditingController();

  //重复密码控制器
  TextEditingController _passWordControllers = TextEditingController();

  //手机号码控制器
  TextEditingController _phoneController = TextEditingController();

  //邮箱控制器
  TextEditingController _emailController = TextEditingController();

  //qq控制器
  TextEditingController _qqController = TextEditingController();

  return BaseAppBarNolife(
    S.of(viewService.context).register,
    Container(
        child: ListView(
      children: <Widget>[
        SizedBox(
          height: ScreenUtil.getInstance().setWidth(20),
        ),
        //账号
        Container(
          margin: EdgeInsets.symmetric(
            horizontal: ScreenUtil.getInstance().setWidth(23),
          ),
          decoration: BoxDecoration(
            border: Border(
              bottom: BorderSide(
                color: Color(AppColors.viewGray),
                width: 1,
              ),
            ),
          ),
          child: TextField(
            controller: _userNameController,
            maxLines: 1,
            decoration: InputDecoration(
              border: InputBorder.none,
              hintText: S.of(viewService.context).number,
              hintStyle: Appstyle.hitTextStyle,
              prefixIcon: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(S.of(viewService.context).userName),
                ],
              ),
            ),
          ),
        ),
        //密码
        Container(
          margin: EdgeInsets.symmetric(
            horizontal: ScreenUtil.getInstance().setWidth(23),
          ),
          decoration: BoxDecoration(
            border: Border(
              bottom: BorderSide(
                color: Color(AppColors.viewGray),
                width: 1,
              ),
            ),
          ),
          child: TextField(
            controller: _passWordController,
            maxLines: 1,
            obscureText: true,
            keyboardType: TextInputType.number,
            decoration: InputDecoration(
              border: InputBorder.none,
              hintText: S.of(viewService.context).password,
              hintStyle: Appstyle.hitTextStyle,
              prefixIcon: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(S.of(viewService.context).passWord),
                ],
              ),
            ),
          ),
        ),
        //重复密码
        Container(
          margin: EdgeInsets.symmetric(
            horizontal: ScreenUtil.getInstance().setWidth(23),
          ),
          decoration: BoxDecoration(
            border: Border(
              bottom: BorderSide(
                color: Color(AppColors.viewGray),
                width: 1,
              ),
            ),
          ),
          child: TextField(
            controller: _passWordControllers,
            maxLines: 1,
            obscureText: true,
            keyboardType: TextInputType.number,
            decoration: InputDecoration(
              border: InputBorder.none,
              hintText: S.of(viewService.context).password,
              hintStyle: Appstyle.hitTextStyle,
              prefixIcon: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(S.of(viewService.context).RepeatPassword),
                ],
              ),
            ),
          ),
        ),
        //手机号
        Container(
          margin: EdgeInsets.symmetric(
            horizontal: ScreenUtil.getInstance().setWidth(23),
          ),
          decoration: BoxDecoration(
            border: Border(
              bottom: BorderSide(
                color: Color(AppColors.viewGray),
                width: 1,
              ),
            ),
          ),
          child: TextField(
            controller: _phoneController,
            maxLines: 1,
            keyboardType: TextInputType.phone,
            decoration: InputDecoration(
              border: InputBorder.none,
              hintText: S.of(viewService.context).EnterMobilePhoneNumber,
              hintStyle: Appstyle.hitTextStyle,
              prefixIcon: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(S.of(viewService.context).phone),
                ],
              ),
            ),
          ),
        ),
        //邮箱
        Container(
          margin: EdgeInsets.symmetric(
            horizontal: ScreenUtil.getInstance().setWidth(23),
          ),
          decoration: BoxDecoration(
            border: Border(
              bottom: BorderSide(
                color: Color(AppColors.viewGray),
                width: 1,
              ),
            ),
          ),
          child: TextField(
            controller: _emailController,
            maxLines: 1,
            keyboardType: TextInputType.emailAddress,
            decoration: InputDecoration(
              border: InputBorder.none,
              hintText: S.of(viewService.context).InputMailbox,
              hintStyle: Appstyle.hitTextStyle,
              prefixIcon: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(S.of(viewService.context).email),
                ],
              ),
            ),
          ),
        ),
        //QQ
        Container(
          margin: EdgeInsets.symmetric(
            horizontal: ScreenUtil.getInstance().setWidth(23),
          ),
          decoration: BoxDecoration(
            border: Border(
              bottom: BorderSide(
                color: Color(AppColors.viewGray),
                width: 1,
              ),
            ),
          ),
          child: TextField(
            controller: _qqController,
            maxLines: 1,
            keyboardType: TextInputType.number,
            decoration: InputDecoration(
              border: InputBorder.none,
              hintText: S.of(viewService.context).InputQQ,
              hintStyle: Appstyle.hitTextStyle,
              prefixIcon: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(S.of(viewService.context).qq),
                ],
              ),
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
              dispatch(
                registerActionCreator.onAction(
                    _userNameController.text,
                    _passWordController.text,
                    _passWordControllers.text,
                    _phoneController.text,
                    _emailController.text,
                    _qqController.text),
              );
            },
            child: Text(
              S.of(viewService.context).register,
              style: Appstyle.witTextStyle,
            ),
          ),
        ),
        //点击登录
        Container(
          margin: EdgeInsets.only(right: ScreenUtil.getInstance().setWidth(23)),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              GestureDetector(
                  onTap: () => dispatch(
                        registerActionCreator.onGoBack(),
                      ),
                  child: Text(S.of(viewService.context).ClickLogin,
                      style: Appstyle.hitTextStyle))
            ],
          ),
        )
      ],
    )),
  );
}
