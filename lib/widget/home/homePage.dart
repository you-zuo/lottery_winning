import 'package:flutter/material.dart'
    hide TabController, Tab, TabBar, TabBarView;
import 'package:lottery_winning/export.dart';
import 'package:lottery_winning/utils/TabController.dart';
import 'package:lottery_winning/utils/newTabs.dart';

class HomePage extends StatelessWidget {
  TabController tabController;
  ScrollController scrollViewController = ScrollController();

  //item
  getItemContainer(String item) {
    return GestureDetector(
      onTap: () => printUtil.print(11),
      child: Container(
        height: 100,
        width: 100,
        alignment: Alignment.center,
        child: Text(
          item,
          style: TextStyle(color: Colors.white, fontSize: 20),
        ),
        color: Colors.blue,
      ),
    );
  }

  //itemList
  Widget items(context) {
    return GridView.count(
      shrinkWrap: true,
      primary: true,
      physics: NeverScrollableScrollPhysics(),
      //水平子Widget之间间距
      crossAxisSpacing: 10.0,
      //垂直子Widget之间间距
      mainAxisSpacing: 10,
      //GridView内边距
      padding: EdgeInsets.all(10.0),
      //一行的Widget数量
      crossAxisCount: 3,
      //子Widget宽高比例
      childAspectRatio: 1,
      //子Widget列表
      children: <Widget>[
        GestureDetector(
          onTap: () => Navigator.pushNamed(
            context,
            "/homeDetailsPage",
            arguments: {"title": "1"},
          ),
          child: Container(
            height: 100,
            width: 100,
            alignment: Alignment.center,
            child: Text(
              "1",
              style: TextStyle(color: Colors.white, fontSize: 20),
            ),
            color: Colors.blue,
          ),
        ),
        GestureDetector(
          onTap: () => printUtil.print(2),
          child: Container(
            height: ScreenUtil.getInstance().setWidth(250),
            width: ScreenUtil.getInstance().setWidth(250),
            alignment: Alignment.center,
            child: Text(
              "2",
              style: TextStyle(color: Colors.white, fontSize: 20),
            ),
            color: Colors.blue,
          ),
        ),
        GestureDetector(
          onTap: () => printUtil.print(3),
          child: Container(
            height: ScreenUtil.getInstance().setWidth(250),
            width: ScreenUtil.getInstance().setWidth(250),
            alignment: Alignment.center,
            child: Text(
              "3",
              style: TextStyle(color: Colors.white, fontSize: 20),
            ),
            color: Colors.blue,
          ),
        ),
        GestureDetector(
          onTap: () => printUtil.print(4),
          child: Container(
            height: ScreenUtil.getInstance().setWidth(250),
            width: ScreenUtil.getInstance().setWidth(250),
            alignment: Alignment.center,
            child: Text(
              "4",
              style: TextStyle(color: Colors.white, fontSize: 20),
            ),
            color: Colors.blue,
          ),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    final _counter = Provider.of<HomeProviderMode>(context);
    tabController = TabController(
        length: _counter.tabValue.length, vsync: ScrollableState());
    printUtil.print(_counter.tabValue.length);
    return BaseAppBarNolife(
        S.of(context).homeTitle,
        NestedScrollView(
            controller: scrollViewController,
            headerSliverBuilder: (context, innerBoxIsScrolled) {
              return <Widget>[
                SliverAppBar(
                  automaticallyImplyLeading: false,
                  forceElevated: false,
                  pinned: true,
                  floating: true,
                  expandedHeight: ScreenUtil.getInstance().setWidth(380),
                  flexibleSpace: FlexibleSpaceBar(
                    collapseMode: CollapseMode.pin,
                    background: Container(
                      child: ListView(
                        shrinkWrap: true,
                        children: <Widget>[
                          //轮播图
                          GestureDetector(
                            onTap: () => _counter
                                .pushDetails(context, {"title": "1111"}),
                            child: Container(
                              width: double.infinity,
                              height: ScreenUtil.getInstance().setWidth(276),
                              child: Swiper(
                                itemCount: _counter.imageValue.length,
                                itemBuilder: (BuildContext context, int index) {
                                  return _counter.imageValue[index];
                                },
                                pagination: SwiperPagination(
                                    alignment: Alignment.bottomRight,
                                    builder: DotSwiperPaginationBuilder(
                                        color: Colors.black54,
                                        activeColor: Colors.white)),
                                controller: SwiperController(),
                                scrollDirection: Axis.horizontal,
                                autoplay: true,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  //tabbar
                  bottom: TabBar(
                    tabs: _counter.tabValue,
                    controller: tabController,
                    indicatorColor: Color(AppColors.redColor),
                    labelColor: Color(AppColors.redColor),
                    unselectedLabelColor: Colors.black,
                    isScrollable: true,
                  ),
                )
              ];
            },
            body: TabBarView(
              controller: tabController,
              children: <Widget>[
                items(context),
                items(context),
                items(context),
                items(context),
                items(context),
              ],
            )),
        "assets/images/log.png");
  }
}
