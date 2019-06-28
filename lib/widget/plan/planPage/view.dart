import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/material.dart'
    hide TabController, Tab, TabBar, TabBarView, NestedScrollView;
import 'package:lottery_winning/export.dart' hide PlanPageState;
import 'package:lottery_winning/utils/newTabs.dart';
import 'action.dart';
import 'state.dart';

Widget buildView(
    PlanPageState state, Dispatch dispatch, ViewService viewService) {
  return BaseAppBarNolife(
    S.of(viewService.context).FollowUpPlan,
    Container(
      child: ListView(
        children: <Widget>[
          Row(
            children: <Widget>[
              Expanded(
                child: TabBar(
                  controller: state.tabController,
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
