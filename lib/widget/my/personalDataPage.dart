import 'package:flutter/material.dart';
import 'package:lottery_winning/export.dart';

class PersonalDataPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BaseAppBarNolife(
      "个人资料",
      Container(
        color: Color(AppColors.viewGray),
        child: ListView(
          children: <Widget>[
            //分割线
            Container(
              width: double.infinity,
              height: ScreenUtil.getInstance().setWidth(30),
              color: Color(AppColors.viewGray),
            ),
            //头像
            GestureDetector(
              onTap: () => null,
              child: Container(
                height: ScreenUtil.getInstance().setWidth(180),
                padding: EdgeInsets.all(
                  ScreenUtil.getInstance().setWidth(32),
                ),
                color: Colors.white,
                child: Row(
                  children: <Widget>[
                    Expanded(
                      child: Text(
                        "头像",
                        style: Appstyle.BlackGrey14,
                      ),
                    ),
//                    ExtendedImage.asset(
//                      state.image,
//                      width: ScreenUtil.getInstance().setWidth(59),
//                      height: ScreenUtil.getInstance().setWidth(59),
//                      fit: BoxFit.fill,
//                      shape: BoxShape.circle,
//                    ),
                    SizedBox(
                      width: ScreenUtil.getInstance().setWidth(20),
                    ),
                    Image.asset("assets/images/r.png")
                  ],
                ),
              ),
            ),
            //分割线
            Container(
              width: double.infinity,
              height: ScreenUtil.getInstance().setWidth(50),
            ),

            Container(
              color: Colors.white,
              child: ListView(
                shrinkWrap: true,
                children: <Widget>[
                  //昵称
                  Container(
                    margin: EdgeInsets.symmetric(
                      horizontal: ScreenUtil.getInstance().setWidth(40),
                    ),
                    padding: EdgeInsets.symmetric(
                      vertical: ScreenUtil.getInstance().setWidth(30),
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
                          width: ScreenUtil.getInstance().setWidth(20),
                        ),
                        Image.asset("assets/images/r.png")
                      ],
                    ),
                  ),
                  //手机号码
                  Container(
                    margin: EdgeInsets.symmetric(
                      horizontal: ScreenUtil.getInstance().setWidth(40),
                    ),
                    padding: EdgeInsets.symmetric(
                      vertical: ScreenUtil.getInstance().setWidth(30),
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
                          width: ScreenUtil.getInstance().setWidth(20),
                        ),
                        Image.asset("assets/images/r.png")
                      ],
                    ),
                  ),
                  //电子邮箱
                  Container(
                    margin: EdgeInsets.symmetric(
                      horizontal: ScreenUtil.getInstance().setWidth(40),
                    ),
                    padding: EdgeInsets.symmetric(
                      vertical: ScreenUtil.getInstance().setWidth(30),
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
                      horizontal: ScreenUtil.getInstance().setWidth(40),
                    ),
                    padding: EdgeInsets.symmetric(
                      vertical: ScreenUtil.getInstance().setWidth(30),
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
              height: ScreenUtil.getInstance().setWidth(50),
            ),
            //QQ绑定
            Container(
              height: ScreenUtil.getInstance().setWidth(100),
              padding: EdgeInsets.symmetric(
                horizontal: ScreenUtil.getInstance().setWidth(40),
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
              height: ScreenUtil.getInstance().setWidth(50),
            ),
            //退出登录
            GestureDetector(
              onTap: () => null,
              child: Container(
                color: Colors.white,
                padding:
                EdgeInsets.only(left: ScreenUtil.getInstance().setWidth(40)),
                height: ScreenUtil.getInstance().setWidth(100),
                child: Row(
                  children: <Widget>[
                    Hero(
                      tag: "logOut",
                      child: Text(
                        "退出登录",
                        style: Appstyle.BlackGrey14,
                      ),
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
}
