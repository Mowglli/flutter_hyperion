import 'package:flutter_hyperion/widget/exercises_widget.dart';
import 'package:flutter_hyperion/widget/line_chart_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hyperion/page/work_plan.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      debugShowCheckedModeBanner: false,
      //color: Colors.green,
      theme: ThemeData(
        primaryColor: Color(0xFFC67E9B),
      ),
      home: DefaultTabController(
        length: 4,
        child: new Scaffold(
          body: TabBarView(
            children: [
              new Container(
                color: Color(0xFF494446),
                child: CustomScrollView(
                  physics: BouncingScrollPhysics(),
                  slivers: [
                    buildAppBar(context),
                    //ExercisesWidget(),
                  ],
                ),
              ),
              new Container(
                child: work_plan(),
              ),
              new Container(
                color: Colors.lightGreen,
              ),
              new Container(
                color: Colors.red,
              ),
            ],
          ),
          bottomNavigationBar: new TabBar(
            tabs: [
              Tab(
                icon: new Icon(Icons.stacked_line_chart),
              ),
              Tab(
                icon: new Icon(Icons.rss_feed),
              ),
              Tab(
                icon: new Icon(Icons.perm_identity),
              ),
              Tab(
                icon: new Icon(Icons.settings),
              )
            ],
            //kun indicator farver til bunden
            labelColor: Color(0xFFB4003B),
            unselectedLabelColor: Color(0xFFC76B8E),
            indicatorSize: TabBarIndicatorSize.label,
            indicatorPadding: EdgeInsets.all(5.0),
            indicatorColor: Colors.white70,
          ),
          backgroundColor: Colors.black,
        ),
      ),
    );
  }

  SliverAppBar buildAppBar(BuildContext context) => SliverAppBar(
        flexibleSpace: FlexibleSpaceBar(background: LineChartWidget()),
        expandedHeight: MediaQuery.of(context).size.height * 0.5,
        stretch: true,
        title: Text('Volume'),
        centerTitle: true,
        pinned: true,
        leading: Icon(Icons.menu),
        actions: [
          Icon(Icons.person, size: 28),
          SizedBox(width: 12),
        ],
      );
}
