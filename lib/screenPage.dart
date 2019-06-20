import 'export.dart';
import 'package:flutter/material.dart';

class NavigatIconView {
  final BottomNavigationBarItem item;

  NavigatIconView({Key key, String title, icon, activeIcon})
      : item = BottomNavigationBarItem(
            icon: Image.asset(
              icon,
              width: 25,
              height: 25,
            ),
            activeIcon: Image.asset(
              activeIcon,
              width: 25,
              height: 25,
            ),
            title: Text(
              title,
              style: Appstyle.ButtonBarStyle,
            ),
            backgroundColor: Colors.white);
}

class ScreenPage extends StatefulWidget {
  @override
  ScreenPageState createState() => new ScreenPageState();
}

class ScreenPageState extends State<ScreenPage> {
  List<NavigatIconView> _navigationViews;
  List<Widget> _pages;
  PageController _pageController;
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    ScreenUtil.instance =
        ScreenUtil(width: 375, height: 667, allowFontScaling: false)
          ..init(context);
    final botNavBar = BottomNavigationBar(
      fixedColor: Color(AppColors.redColor),
      items: _navigationViews.map(
        (view) {
          return view.item;
        },
      ).toList(),
      //当前用户选择的item
      currentIndex: _currentIndex,
      //BottomNavigationBar动画禁用
      type: BottomNavigationBarType.fixed,
      onTap: (index) {
        setState(() {
          _currentIndex = index;
          _pageController.animateToPage(_currentIndex,
              duration: Duration(milliseconds: 300), curve: Curves.easeIn);
        });
      },
    );

    return Scaffold(
      body: PageView.builder(
        physics: NeverScrollableScrollPhysics(),
        itemBuilder: (context, index) {
          return _pages[index];
        },
        controller: _pageController,
        itemCount: _pages.length,
        onPageChanged: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        //cacheCount: 5,
      ),
      bottomNavigationBar: botNavBar,
    );
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    //底栏Item
    _navigationViews = [
      NavigatIconView(
        title: "彩票大厅",
        icon: ("assets/images/homef.png"),
        activeIcon: ("assets/images/homet.png"),
      ),
      NavigatIconView(
        title: "追号计划",
        icon: ("assets/images/zhengtiquanbujihuaf.png"),
        activeIcon: ("assets/images/zhengtiquanbujihuat.png"),
      ),
      NavigatIconView(
        title: "接口购买",
        icon: ("assets/images/ShoppingCartf.png"),
        activeIcon: ("assets/images/ShoppingCartt.png"),
      ),
      NavigatIconView(
        title: "我的",
        icon: ("assets/images/myf.png"),
        activeIcon: ("assets/images/myt.png"),
      ),
    ];

    //page控制器
    _pageController = PageController(initialPage: _currentIndex);

    //body的page
    _pages = [
      HomePage().buildPage(null),
      PlanPagePage().buildPage(null),
      PurchasePage().buildPage(null),
      myPage().buildPage(null)
    ];
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
  }
}
