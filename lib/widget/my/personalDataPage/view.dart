import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/material.dart';
import 'package:lottery_winning/export.dart';
import 'action.dart';
import 'state.dart';

Widget buildView(
    personalDataState state, Dispatch dispatch, ViewService viewService) {
  return BaseAppBarNolife(
    "个人资料",
    Container(
      color: Color(AppColors.viewGray),
      child: ListView(
        children: <Widget>[
          //分割线
          Container(
            width: double.infinity,
            height: ScreenUtil.getInstance().setWidth(15),
            color: Color(AppColors.viewGray),
          ),
          //头像
          GestureDetector(
            onTap: () => dispatch(
                  personalDataActionCreator.onImage(),
                ),
            child: Container(
              height: ScreenUtil.getInstance().setWidth(90),
              padding: EdgeInsets.all(
                ScreenUtil.getInstance().setWidth(16),
              ),
              color: Colors.white,
              child: Row(
                children: <Widget>[
                  Expanded(
                      child: Text(
                    "头像",
                    style: Appstyle.BlackGrey14,
                  )),
                  ExtendedImage.asset(
                    "assets/images/Dice1.png",
                    width: ScreenUtil.getInstance().setWidth(59),
                    height: ScreenUtil.getInstance().setWidth(59),
                    fit: BoxFit.fill,
                    shape: BoxShape.circle,
                  ),
                  SizedBox(
                    width: ScreenUtil.getInstance().setWidth(10),
                  ),
                  Image.asset("assets/images/r.png")
                ],
              ),
            ),
          ),
          //分割线
          Container(
            width: double.infinity,
            height: ScreenUtil.getInstance().setWidth(25),
          ),

          Container(
            color: Colors.white,
            child: ListView(
              shrinkWrap: true,
              children: <Widget>[
                //昵称
                Container(
                  margin: EdgeInsets.symmetric(
                    horizontal: ScreenUtil.getInstance().setWidth(20),
                  ),
                  padding: EdgeInsets.symmetric(
                    vertical: ScreenUtil.getInstance().setWidth(15),
                  ),
                  decoration: BoxDecoration(
                    border: Border(
                      bottom: BorderSide(
                        width: 1,
                        color: Color(AppColors.viewGray),
                      ),
                    ),
                  ),
                  child: Row(
                    children: <Widget>[
                      Expanded(
                        child: Text(
                          "昵称",
                          style: Appstyle.BlackGrey14,
                        ),
                      ),
                      Text(
                        "洋芋坨坨",
                        style: Appstyle.grayColor14,
                      ),
                      SizedBox(
                        width: ScreenUtil.getInstance().setWidth(10),
                      ),
                      Image.asset("assets/images/r.png")
                    ],
                  ),
                ),
                //手机号码
                Container(
                  margin: EdgeInsets.symmetric(
                    horizontal: ScreenUtil.getInstance().setWidth(20),
                  ),
                  padding: EdgeInsets.symmetric(
                    vertical: ScreenUtil.getInstance().setWidth(15),
                  ),
                  decoration: BoxDecoration(
                    border: Border(
                      bottom: BorderSide(
                        width: 1,
                        color: Color(AppColors.viewGray),
                      ),
                    ),
                  ),
                  child: Row(
                    children: <Widget>[
                      Expanded(
                          child: Text(
                        "手机号码",
                        style: Appstyle.BlackGrey14,
                      )),
                      Text(
                        "15181854324",
                        style: Appstyle.grayColor14,
                      ),
                      SizedBox(
                        width: ScreenUtil.getInstance().setWidth(10),
                      ),
                      Image.asset("assets/images/r.png")
                    ],
                  ),
                ),
                //电子邮箱
                Container(
                  margin: EdgeInsets.symmetric(
                    horizontal: ScreenUtil.getInstance().setWidth(20),
                  ),
                  padding: EdgeInsets.symmetric(
                    vertical: ScreenUtil.getInstance().setWidth(15),
                  ),
                  decoration: BoxDecoration(
                    border: Border(
                      bottom: BorderSide(
                        width: 1,
                        color: Color(AppColors.viewGray),
                      ),
                    ),
                  ),
                  child: Row(
                    children: <Widget>[
                      Expanded(
                          child: Text(
                        "电子邮箱",
                        style: Appstyle.BlackGrey14,
                      )),
                      Image.asset("assets/images/r.png")
                    ],
                  ),
                ),
                //修改密码
                Container(
                  margin: EdgeInsets.symmetric(
                    horizontal: ScreenUtil.getInstance().setWidth(20),
                  ),
                  padding: EdgeInsets.symmetric(
                    vertical: ScreenUtil.getInstance().setWidth(15),
                  ),
                  decoration: BoxDecoration(
                    border: Border(
                      bottom: BorderSide(
                        width: 1,
                        color: Color(AppColors.viewGray),
                      ),
                    ),
                  ),
                  child: Row(
                    children: <Widget>[
                      Expanded(
                          child: Text(
                        "修改密码",
                        style: Appstyle.BlackGrey14,
                      )),
                      Image.asset("assets/images/r.png")
                    ],
                  ),
                ),
              ],
            ),
          ),
          //分割线
          Container(
            width: double.infinity,
            height: ScreenUtil.getInstance().setWidth(25),
          ),
          //QQ绑定
          Container(
            height: ScreenUtil.getInstance().setWidth(50),
            padding: EdgeInsets.symmetric(
              horizontal: ScreenUtil.getInstance().setWidth(20),
            ),
            decoration: BoxDecoration(
              border: Border(
                bottom: BorderSide(
                  width: 1,
                  color: Color(AppColors.viewGray),
                ),
              ),
              color: Colors.white,
            ),
            child: Row(
              children: <Widget>[
                Expanded(
                  child: Text(
                    "QQ绑定",
                    style: Appstyle.BlackGrey14,
                  ),
                ),
                FlatButton(
                  shape: RoundedRectangleBorder(
                    side: BorderSide.none,
                    borderRadius: BorderRadius.all(
                      Radius.circular(30),
                    ),
                  ),
                  color: Color(AppColors.ButtonRed),
                  onPressed: () => print("111"),
                  child: Text(
                    "绑定",
                    style: Appstyle.white14,
                  ),
                ),
              ],
            ),
          ),
          //分割线
          Container(
            width: double.infinity,
            height: ScreenUtil.getInstance().setWidth(25),
          ),
          //退出登录
          GestureDetector(
            onTap: () => dispatch(
                  personalDataActionCreator.onLogOut(),
                ),
            child: Container(
              color: Colors.white,
              padding:
                  EdgeInsets.only(left: ScreenUtil.getInstance().setWidth(20)),
              height: ScreenUtil.getInstance().setWidth(50),
              child: Row(
                children: <Widget>[
                  Text(
                    "退出登录",
                    style: Appstyle.BlackGrey14,
                  )
                ],
              ),
            ),
          )
        ],
      ),
    ),
  );
}
