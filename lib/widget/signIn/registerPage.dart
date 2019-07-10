import 'package:flutter/material.dart';
import 'package:lottery_winning/export.dart';

class RegisterPage extends StatefulWidget {
  @override
  _RegisterPageState createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  //账号控制器
  TextEditingController userNameController = TextEditingController();

  //密码控制器
  TextEditingController passWordController = TextEditingController();

  //重复密码控制器
  TextEditingController passWordControllers = TextEditingController();

  //手机号码控制器
  TextEditingController phoneController = TextEditingController();

  //邮箱控制器
  TextEditingController emailController = TextEditingController();

  //qq控制器
  TextEditingController qqController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final _counter = Provider.of<RegisterProviderMode>(context);

    return BaseAppBarNolife(
      S.of(context).register,
      Container(
          child: ListView(
        children: <Widget>[
          SizedBox(
            height: ScreenUtil.getInstance().setWidth(40),
          ),
          //账号
          Container(
            margin: EdgeInsets.symmetric(
              horizontal: ScreenUtil.getInstance().setWidth(46),
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
              controller: userNameController,
              maxLines: 1,
              decoration: InputDecoration(
                border: InputBorder.none,
                hintText: S.of(context).number,
                hintStyle: Appstyle.hitTextStyle,
                prefixIcon: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(S.of(context).userName),
                  ],
                ),
              ),
            ),
          ),
          //密码
          Container(
            margin: EdgeInsets.symmetric(
              horizontal: ScreenUtil.getInstance().setWidth(46),
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
              controller: passWordController,
              maxLines: 1,
              obscureText: true,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                border: InputBorder.none,
                hintText: S.of(context).password,
                hintStyle: Appstyle.hitTextStyle,
                prefixIcon: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(S.of(context).passWord),
                  ],
                ),
              ),
            ),
          ),
          //重复密码
          Container(
            margin: EdgeInsets.symmetric(
              horizontal: ScreenUtil.getInstance().setWidth(46),
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
              controller: passWordControllers,
              maxLines: 1,
              obscureText: true,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                border: InputBorder.none,
                hintText: S.of(context).password,
                hintStyle: Appstyle.hitTextStyle,
                prefixIcon: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(S.of(context).RepeatPassword),
                  ],
                ),
              ),
            ),
          ),
          //手机号
          Container(
            margin: EdgeInsets.symmetric(
              horizontal: ScreenUtil.getInstance().setWidth(46),
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
              controller: phoneController,
              maxLines: 1,
              keyboardType: TextInputType.phone,
              inputFormatters: [LengthLimitingTextInputFormatter(11)],
              decoration: InputDecoration(
                border: InputBorder.none,
                hintText: S.of(context).EnterMobilePhoneNumber,
                hintStyle: Appstyle.hitTextStyle,
                prefixIcon: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(S.of(context).phone),
                  ],
                ),
              ),
            ),
          ),
          //邮箱
          Container(
            margin: EdgeInsets.symmetric(
              horizontal: ScreenUtil.getInstance().setWidth(46),
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
              controller: emailController,
              maxLines: 1,
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(
                border: InputBorder.none,
                hintText: S.of(context).InputMailbox,
                hintStyle: Appstyle.hitTextStyle,
                prefixIcon: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(S.of(context).email),
                  ],
                ),
              ),
            ),
          ),
          //QQ
          Container(
            margin: EdgeInsets.symmetric(
              horizontal: ScreenUtil.getInstance().setWidth(46),
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
              controller: qqController,
              maxLines: 1,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                border: InputBorder.none,
                hintText: S.of(context).InputQQ,
                hintStyle: Appstyle.hitTextStyle,
                prefixIcon: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(S.of(context).qq),
                  ],
                ),
              ),
            ),
          ),
          //登录按钮
          Container(
            margin: EdgeInsets.symmetric(
                horizontal: ScreenUtil.getInstance().setWidth(46),
                vertical: ScreenUtil.getInstance().setWidth(20)),
            child: FlatButton(
              color: Color(AppColors.loginButton),
              onPressed: () => _counter.onTapRegister(
                  context,
                  userNameController.text,
                  passWordController.text,
                  passWordControllers.text,
                  phoneController.text,
                  emailController.text,
                  qqController.text),
              child: Text(
                S.of(context).register,
                style: Appstyle.witTextStyle,
              ),
            ),
          ),
          //点击登录
          Container(
            margin:
                EdgeInsets.only(right: ScreenUtil.getInstance().setWidth(46)),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                GestureDetector(
                    onTap: () => Navigator.of(context).pop(),
                    child: Text(S.of(context).ClickLogin,
                        style: Appstyle.hitTextStyle))
              ],
            ),
          ),
        ],
      )),
    );
  }
}
