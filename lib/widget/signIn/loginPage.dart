import 'package:flutter/material.dart';
import 'package:lottery_winning/export.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  //账号控制器
  TextEditingController textEditingController = TextEditingController();

  //密码控制器
  TextEditingController textEditingControllers = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final _counter = Provider.of<LoginProviderMode>(context);
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
                  margin: EdgeInsets.only(top: 50),
                  child: Image.asset(
                    "assets/images/log.png",
                    width: 150,
                    height: 60,
                    fit: BoxFit.cover,
                  ),
                ),
              ],
            ),
            /*输入用户名*/
            Container(
              margin: EdgeInsets.only(left: 23, right: 23, top: 50),
              decoration: BoxDecoration(
                border: Border(
                  bottom: BorderSide(
                    color: Color(AppColors.viewGray),
                    width: 1,
                  ),
                ),
              ),
              child: TextField(
                controller: textEditingController,
                maxLines: 1,
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: "请输入用户名",
                  hintStyle: Appstyle.hitTextStyle,
                ),
              ),
            ),
            /*输入密码*/
            Container(
              margin: EdgeInsets.only(left: 23, right: 23),
              decoration: BoxDecoration(
                border: Border(
                  bottom: BorderSide(
                    color: Color(AppColors.viewGray),
                    width: 1,
                  ),
                ),
              ),
              child: TextField(
                controller: textEditingControllers,
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
            /*登录按钮*/
            Container(
              margin: EdgeInsets.symmetric(horizontal: 23, vertical: 10),
              child: FlatButton(
                color: Color(AppColors.loginButton),
                onPressed: () => _counter.onTapLogin(context,
                    textEditingController.text, textEditingControllers.text),
                child: Text(
                  S.of(context).login,
                  style: Appstyle.witTextStyle,
                ),
              ),
            ),
            //点击注册
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                GestureDetector(
                  onTap: () => _counter.onTapRegister(context),
                  child: Text(
                    S.of(context).ClickToRegister,
                    style: Appstyle.hitTextStyle,
                  ),
                ),
                SizedBox(
                  width: 23,
                )
              ],
            ),
            SizedBox(
              height: 10,
            ),
            /*请第三方账号登录*/
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  S.of(context).PartyLogin,
                  style: Appstyle.hitTextStyle,
                )
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                GestureDetector(
                  onTap: () => null,
                  child: Image.asset(
                    "assets/images/penguin.png",
                    width: 41,
                    height: 41,
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
