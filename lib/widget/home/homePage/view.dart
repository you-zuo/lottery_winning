import 'package:fish_redux/fish_redux.dart';

import 'package:flutter/material.dart'
    hide TabController, Tab, TabBar, TabBarView;
import 'package:lottery_winning/export.dart';
import 'package:lottery_winning/utils/newTabs.dart';
import 'action.dart';
import 'state.dart';

Widget buildView(HomeState state, Dispatch dispatch, ViewService viewService) {
  List<String> getDataList() {
    List<String> list = [];
    for (int i = 0; i < 100; i++) {
      list.add(i.toString());
    }
    return list;
  }

  //item
  getItemContainer(String item) {
    return GestureDetector(
      onTap: () => dispatch(
            HomeActionCreator.onHomeDetailsPage(item),
          ),
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

  List<Widget> getWidgetList() {
    return getDataList().map((item) => getItemContainer(item)).toList();
  }

  //itemList
  Widget items() {
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
      children: getWidgetList(),
    );
  }

  return BaseAppBarNolife(
      S.of(viewService.context).homeTitle,
      NestedScrollView(
          controller: state.scrollViewController,
          headerSliverBuilder: (context, innerBoxIsScrolled) {
            return <Widget>[
              SliverAppBar(
                automaticallyImplyLeading: false,
                forceElevated: false,
                pinned: true,
                floating: true,
                expandedHeight: ScreenUtil.getInstance().setWidth(200),
                flexibleSpace: FlexibleSpaceBar(
                  collapseMode: CollapseMode.pin,
                  background: Container(
                    child: ListView(
                      shrinkWrap: true,
                      children: <Widget>[
                        //轮播图
                        Container(
                          width: double.infinity,
                          height: ScreenUtil.getInstance().setWidth(138),
                          child: Swiper(
                            itemCount: state.imagesList.length,
                            itemBuilder: (BuildContext context, int index) {
                              return state.imagesList[index];
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
                      ],
                    ),
                  ),
                ),
                //tabbar
                bottom: TabBar(
                  tabs: state.tabBars,
                  controller: state.tabController,
                  indicatorColor: Color(AppColors.redColor),
                  labelColor: Color(AppColors.redColor),
                  unselectedLabelColor: Colors.black,
                  isScrollable: true,
                ),
              )
            ];
          },
          body: TabBarView(
            controller: state.tabController,
            children: <Widget>[
              items(),
              items(),
              items(),
              items(),
              items(),
            ],
          )),
      "assets/images/log.png");
}
