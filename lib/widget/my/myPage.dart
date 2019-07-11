import 'package:flutter/material.dart';
import 'package:lottery_winning/export.dart';

class MyPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final _counter = Provider.of<MyProviderMode>(context);
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Color(AppColors.redColor),

          title: Text(
            "我的",
            style: Appstyle.white14,
          ),
          elevation: 0,
          centerTitle: true,
          actions: <Widget>[
            GestureDetector(
                onTap: () => _counter.onTapMsg(context), child: Image.asset("assets/images/msg.png")),
          ],
        ),
        body: Material(
          child: Container(
            child: ListView(
              children: <Widget>[
                //顶部个人信息
                Container(
                  width: double.infinity,
                  height: ScreenUtil.getInstance().setWidth(400),
                  color: Color(AppColors.redColor),
                  child: Column(
                    children: <Widget>[
                      //头像
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          GestureDetector(
                            onTap: () => _counter.onTapPersonalData(context),
                            child: ExtendedImage.asset(
                              "assets/images/Dice1.png",
                              width: ScreenUtil.getInstance().setWidth(118),
                              height: ScreenUtil.getInstance().setWidth(118),
                              fit: BoxFit.fill,
                              shape: BoxShape.circle,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: ScreenUtil.getInstance().setWidth(26),
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
                      SizedBox(height: ScreenUtil.getInstance().setWidth(72),),
                      //充值
                      Container(
                        margin: EdgeInsets.symmetric(
                          horizontal: ScreenUtil.getInstance().setWidth(100),
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
                                  "${S.of(context).balance}",
                                  style: Appstyle.white16,
                                )
                              ],
                            ),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: <Widget>[
                                Center(
                                  child: Image.asset(
                                    "assets/images/money.png",
                                    width: ScreenUtil.getInstance().setWidth(30),
                                    height: ScreenUtil.getInstance().setWidth(30),
                                  ),
                                ),
                                SizedBox(
                                  width: ScreenUtil.getInstance().setWidth(8),
                                ),
                                Text(
                                  "充值",
                                  style: Appstyle.white16,
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
                  height: ScreenUtil.getInstance().setWidth(34),
                  color: Color(AppColors.viewGray),
                ),
                //我的订单
                Container(
                  decoration: BoxDecoration(
                      border: Border(
                          bottom: BorderSide(
                              color: Color(AppColors.viewGray), width: 1))),
                  padding: EdgeInsets.symmetric(
                      horizontal: ScreenUtil.getInstance().setWidth(44),
                      vertical: ScreenUtil.getInstance().setWidth(20)),
                  child: Row(
                    children: <Widget>[
                      Image.asset("assets/images/Order.png"),
                      SizedBox(
                        width: ScreenUtil.getInstance().setWidth(20),
                      ),
                      Expanded(
                        child: Text(
                          S.of(context).MyOrder,
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
                  height: ScreenUtil.getInstance().setWidth(34),
                  color: Color(AppColors.viewGray),
                ),
                //关于我们
                Container(
                  decoration: BoxDecoration(
                      border: Border(
                          bottom: BorderSide(
                              color: Color(AppColors.viewGray), width: 1))),
                  padding: EdgeInsets.symmetric(
                      horizontal: ScreenUtil.getInstance().setWidth(44),
                      vertical: ScreenUtil.getInstance().setWidth(20)),
                  child: Row(
                    children: <Widget>[
                      Image.asset("assets/images/about.png"),
                      SizedBox(
                        width: ScreenUtil.getInstance().setWidth(20),
                      ),
                      Expanded(
                          child: Text(
                        S.of(context).about,
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
                          bottom: BorderSide(
                              color: Color(AppColors.viewGray), width: 1))),
                  padding: EdgeInsets.symmetric(
                      horizontal: ScreenUtil.getInstance().setWidth(44),
                      vertical: ScreenUtil.getInstance().setWidth(20)),
                  child: Row(
                    children: <Widget>[
                      Image.asset("assets/images/feedback.png"),
                      SizedBox(
                        width: ScreenUtil.getInstance().setWidth(20),
                      ),
                      Expanded(
                          child: Text(
                        S.of(context).feedback,
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
                          bottom: BorderSide(
                              color: Color(AppColors.viewGray), width: 1))),
                  padding: EdgeInsets.symmetric(
                      horizontal: ScreenUtil.getInstance().setWidth(44),
                      vertical: ScreenUtil.getInstance().setWidth(20)),
                  child: Row(
                    children: <Widget>[
                      Image.asset("assets/images/share.png"),
                      SizedBox(
                        width: ScreenUtil.getInstance().setWidth(20),
                      ),
                      Expanded(
                          child: Text(
                        S.of(context).ShareWithFriends,
                        style: Appstyle.gray14,
                      )),
                      Image.asset("assets/images/r.png"),
                    ],
                  ),
                ),
                //分割线
                Container(
                  width: double.infinity,
                  height: ScreenUtil.getInstance().setWidth(34),
                  color: Color(AppColors.viewGray),
                ),
                //设置
                GestureDetector(
                  onTap: () => null,
                  child: Container(
                    decoration: BoxDecoration(
                        border: Border(
                            bottom: BorderSide(
                                color: Color(AppColors.viewGray), width: 1))),
                    padding: EdgeInsets.symmetric(
                        horizontal: ScreenUtil.getInstance().setWidth(44),
                        vertical: ScreenUtil.getInstance().setWidth(20)),
                    child: Row(
                      children: <Widget>[
                        Image.asset("assets/images/setting.png"),
                        SizedBox(
                          width: ScreenUtil.getInstance().setWidth(20),
                        ),
                        Expanded(
                            child: Text(
                          S.of(context).setting,
                          style: Appstyle.gray14,
                        )),
                        Image.asset("assets/images/r.png"),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
    );
  }
}
