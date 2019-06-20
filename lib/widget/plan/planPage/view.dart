import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/material.dart';
import 'package:lottery_winning/export.dart' hide PlanPageState;
import 'action.dart';
import 'state.dart';

Widget buildView(
    PlanPageState state, Dispatch dispatch, ViewService viewService) {

  TabController _tabController;
  _tabController = TabController(
    length: state.tabBars.length,
    vsync: ScrollableState(),
  );

  return BaseAppBarNolife(
    S.of(viewService.context).FollowUpPlan,
    Container(
      child: ListView(
        children: <Widget>[
          Row(
            children: <Widget>[
              Expanded(
                child: TabBar(
                  controller: _tabController,
                  indicatorColor: Color(AppColors.redColor),
                  labelColor: Color(AppColors.redColor),
                  unselectedLabelColor: Colors.black,
                  isScrollable: true,
                  tabs: state.tabBars,
                ),
              ),
              GestureDetector(
                onTap: () => dispatch(
                      PlanPageActionCreator.onPlanPages(),
                    ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Icon(Icons.add),
                ),
              )
            ],
          ),
        ],
      ),
    ),
  );
}
