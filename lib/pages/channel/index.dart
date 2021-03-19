import 'package:flutter/material.dart';


class ChannelPage extends StatefulWidget {
  @override
  _ChannelPageState createState() => _ChannelPageState();
}

class _ChannelPageState extends State<ChannelPage>  with TickerProviderStateMixin {

  TabController _tabController;
  

  List<Widget> tabs = [
    Tab(
      text: '频道',
    ),
    Tab(
      text: '分区',
    ) 
  ];

  List<Widget> tabPages = [
    Center(
      child: Text('频道'),
    ),
    Center(
      child: Text('分区'),
    )
  ];

   @override
  void initState() {
    super.initState();
    _tabController = TabController(initialIndex: 0, length: tabPages.length, vsync: this);
  }

  // 
  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        bottom: _buildAppBarBottom()
      ),
      body: TabBarView(
        controller: _tabController,
        children: tabPages
      ),
      
    );
  }

  Widget _buildAppBarBottom(){
    return PreferredSize(
      preferredSize: Size.fromHeight(0),
      child: Theme(
        data: Theme.of(context).copyWith(
          splashColor:Colors.transparent,
          highlightColor: Colors.transparent,
        ),
        child: Column(
          children: [
            TabBar(
              isScrollable: true,
              indicatorWeight: 3.0,
              controller: _tabController,
              tabs: tabs
            ),
            Divider(
              height: 7,
            ),
          ],
        )
      )
    );
  }



}