import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/material.dart';
import 'package:lottery_winning/export.dart';
import 'action.dart';
import 'state.dart';

Widget buildView(myState state, Dispatch dispatch, ViewService viewService) {
  return Scaffold(
    appBar: AppBar(
      backgroundColor: Color(AppColors.redColor),
      automaticallyImplyLeading: false,
      title: Text(
        "我的",
        style: Appstyle.white14,
      ),
      elevation: 0,
      centerTitle: true,
      actions: <Widget>[
        GestureDetector(
            onTap: () => dispatch(
                  myActionCreator.onMsg(),
                ),
            child: Image.asset("assets/images/msg.png")),
      ],
    ),
    body: ListView(
      children: <Widget>[
        //顶部个人信息
        Container(
          width: double.infinity,
          height: ScreenUtil.getInstance().setWidth(170),
          color: Color(AppColors.redColor),
          child: Column(
            children: <Widget>[
              //头像
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  GestureDetector(
                    onTap: () => dispatch(
                          myActionCreator.onPersonalData(),
                        ),
                    child: ExtendedImage.asset(
                      "assets/images/Dice1.png",
                      width: ScreenUtil.getInstance().setWidth(59),
                      height: ScreenUtil.getInstance().setWidth(59),
                      fit: BoxFit.fill,
                      shape: BoxShape.circle,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: ScreenUtil.getInstance().setWidth(10),
              ),
              //名字
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    "洋芋坨坨",
                    style: Appstyle.white18,
                  )
                ],
              ),
              //充值
              Container(
                margin: EdgeInsets.symmetric(
                  horizontal: ScreenUtil.getInstance().setWidth(50),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: <Widget>[
                    Column(
                      children: [
                        Text(
                          "00",
                          style: Appstyle.white21,
                        ),
                        Text(
                          "${S.of(viewService.context).balance}",
                          style: Appstyle.white12,
                        )
                      ],
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: <Widget>[
                        Image.asset(
                          "assets/images/money.png",
                          width: ScreenUtil.getInstance().setWidth(14),
                          height: ScreenUtil.getInstance().setWidth(14),
                        ),
                        SizedBox(
                          width: ScreenUtil.getInstance().setWidth(5),
                        ),
                        Text(
                          "充值",
                          style: Appstyle.white12,
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
        //分割线
        Container(
          width: double.infinity,
          height: ScreenUtil.getInstance().setWidth(17),
          color: Color(AppColors.viewGray),
        ),
        //我的订单
        Container(
          decoration: BoxDecoration(
              border: Border(
                  bottom:
                      BorderSide(color: Color(AppColors.viewGray), width: 1))),
          padding: EdgeInsets.symmetric(
              horizontal: ScreenUtil.getInstance().setWidth(22),
              vertical: ScreenUtil.getInstance().setWidth(10)),
          child: Row(
            children: <Widget>[
              Image.asset("assets/images/Order.png"),
              SizedBox(
                width: ScreenUtil.getInstance().setWidth(10),
              ),
              Expanded(
                child: Text(
                  S.of(viewService.context).MyOrder,
                  style: Appstyle.gray14,
                ),
              ),
              Image.asset("assets/images/r.png"),
            ],
          ),
        ),
        //分割线
        Container(
          width: double.infinity,
          height: ScreenUtil.getInstance().setWidth(17),
          color: Color(AppColors.viewGray),
        ),
        //关于我们
        Container(
          decoration: BoxDecoration(
              border: Border(
                  bottom:
                      BorderSide(color: Color(AppColors.viewGray), width: 1))),
          padding: EdgeInsets.symmetric(
              horizontal: ScreenUtil.getInstance().setWidth(22),
              vertical: ScreenUtil.getInstance().setWidth(10)),
          child: Row(
            children: <Widget>[
              Image.asset("assets/images/about.png"),
              SizedBox(
                width: ScreenUtil.getInstance().setWidth(10),
              ),
              Expanded(
                  child: Text(
                S.of(viewService.context).about,
                style: Appstyle.gray14,
              )),
              Image.asset("assets/images/r.png"),
            ],
          ),
        ),
        //意见反馈
        Container(
          decoration: BoxDecoration(
              border: Border(
                  bottom:
                      BorderSide(color: Color(AppColors.viewGray), width: 1))),
          padding: EdgeInsets.symmetric(
              horizontal: ScreenUtil.getInstance().setWidth(22),
              vertical: ScreenUtil.getInstance().setWidth(10)),
          child: Row(
            children: <Widget>[
              Image.asset("assets/images/feedback.png"),
              SizedBox(
                width: ScreenUtil.getInstance().setWidth(10),
              ),
              Expanded(
                  child: Text(
                S.of(viewService.context).feedback,
                style: Appstyle.gray14,
              )),
              Image.asset("assets/images/r.png"),
            ],
          ),
        ),
        //分享给朋友
        Container(
          decoration: BoxDecoration(
              border: Border(
                  bottom:
                      BorderSide(color: Color(AppColors.viewGray), width: 1))),
          padding: EdgeInsets.symmetric(
              horizontal: ScreenUtil.getInstance().setWidth(22),
              vertical: ScreenUtil.getInstance().setWidth(10)),
          child: Row(
            children: <Widget>[
              Image.asset("assets/images/share.png"),
              SizedBox(
                width: ScreenUtil.getInstance().setWidth(10),
              ),
              Expanded(
                  child: Text(
                S.of(viewService.context).ShareWithFriends,
                style: Appstyle.gray14,
              )),
              Image.asset("assets/images/r.png"),
            ],
          ),
        ),
        //分割线
        Container(
          width: double.infinity,
          height: ScreenUtil.getInstance().setWidth(17),
          color: Color(AppColors.viewGray),
        ),
        //设置
        GestureDetector(
          onTap: () => dispatch(
                myActionCreator.onSetting(),
              ),
          child: Container(
            decoration: BoxDecoration(
                border: Border(
                    bottom: BorderSide(
                        color: Color(AppColors.viewGray), width: 1))),
            padding: EdgeInsets.symmetric(
                horizontal: ScreenUtil.getInstance().setWidth(22),
                vertical: ScreenUtil.getInstance().setWidth(10)),
            child: Row(
              children: <Widget>[
                Image.asset("assets/images/setting.png"),
                SizedBox(
                  width: ScreenUtil.getInstance().setWidth(10),
                ),
                Expanded(
                    child: Text(
                  S.of(viewService.context).setting,
                  style: Appstyle.gray14,
                )),
                Image.asset("assets/images/r.png"),
              ],
            ),
          ),
        ),
      ],
    ),
  );
}
