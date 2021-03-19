import 'package:flutter/material.dart';

import './live/index.dart';
import './recommend/index.dart';
import './hot/index.dart';

class TabPages{
  String text;
  Widget page;

  TabPages(this.text,this.page);
}

Widget widgetDemo() {
  return Center(
    child: Text('It\'s cloudy here'),
  );
}

List<TabPages> tabsPages = [
  TabPages('直播',LivePage()),
  TabPages('推荐',RecommendPage()),
  TabPages('热门',HotPage()),
  TabPages('追番',widgetDemo()),
  TabPages('影视',widgetDemo()),
  TabPages('抗击肺癌',widgetDemo()),
  TabPages('小康',widgetDemo())
];


List<Widget> tabs = tabsPages.map((TabPages e) => 
  Tab(
    text: e.text
  )
).toList();

List<Widget> tabPages = tabsPages.map((TabPages e) => 
 e.page
).toList();
