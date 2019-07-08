import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/material.dart';
import 'package:lottery_winning/export.dart';
import 'action.dart';
import 'state.dart';

Widget buildView(
    registerState state, Dispatch dispatch, ViewService viewService) {
  return BaseAppBarNolife(
    S.of(viewService.context).register,
    Container(
        child: ListView(
          children: <Widget>[
            SizedBox(
              height: screenAdapter.pxToDp(20),
            ),
            //账号
            Container(
              margin: EdgeInsets.symmetric(
                horizontal: screenAdapter.pxToDp(23),
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
                controller: state.userNameController,
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
                horizontal: screenAdapter.pxToDp(23),
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
                controller: state.passWordController,
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
                horizontal: screenAdapter.pxToDp(23),
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
                controller: state.passWordControllers,
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
                horizontal: screenAdapter.pxToDp(23),
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
                controller: state.phoneController,
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
                horizontal: screenAdapter.pxToDp(23),
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
                controller: state.emailController,
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
                horizontal: screenAdapter.pxToDp(23),
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
                controller: state.qqController,
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
                  horizontal: screenAdapter.pxToDp(23),
                  vertical: screenAdapter.pxToDp(10)),
              child: FlatButton(
                color: Color(AppColors.loginButton),
                onPressed: () {
                  dispatch(
                    registerActionCreator.onAction(
                        state.userNameController.text,
                        state.passWordController.text,
                        state.passWordControllers.text,
                        state.phoneController.text,
                        state.emailController.text,
                        state.qqController.text),
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
              margin: EdgeInsets.only(right: screenAdapter.pxToDp(23)),
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
            ),
          ],
        )),
  );
}