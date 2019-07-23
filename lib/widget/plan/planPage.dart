import 'package:flutter/material.dart'
    hide TabController, Tab, TabBar, TabBarView, NestedScrollView;
import 'package:lottery_winning/export.dart';
import 'package:lottery_winning/utils/TabController.dart';
import 'package:lottery_winning/utils/newTabs.dart';

class PlanPage extends StatelessWidget {
  TabController tabController;

  @override
  Widget build(BuildContext context) {
    final _counter = Provider.of<PlanProviderMode>(context);
    tabController = TabController(
      length: _counter.tabValue.length,
      vsync: ScrollableState(),
    );
    return BaseAppBarNolife(
      S.of(context).FollowUpPlan,
      Container(
        child: ListView(
          children: <Widget>[
            Row(
              children: <Widget>[
                Expanded(
                  child: TabBar(
                    controller: tabController,
                    indicatorColor: Color(AppColors.redColor),
                    labelColor: Color(AppColors.redColor),
                    unselectedLabelColor: Colors.black,
                    isScrollable: true,
                    tabs: _counter.tabValue,
                  ),
                ),
                GestureDetector(
                  onTap: () => _counter.onTapPlanPages(context),
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
}
