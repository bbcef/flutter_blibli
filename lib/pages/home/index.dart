import 'package:flutter/material.dart';
import 'package:badges/badges.dart';
import 'package:bot_toast/bot_toast.dart';

// widget
import 'widgets/tabBar.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with TickerProviderStateMixin  {
  // 
  TabController _tabController;
  // 

  // 
  final String imageUrl = 'assets/images/my.webp';


  // 
  @override
  void initState() {
    super.initState();
    _tabController = TabController(initialIndex: 1, length: tabsPages.length, vsync: this);
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
      appBar: _buildAppBar(),
      body: TabBarView(
        controller: _tabController,
        children: tabPages
      ),
    );
  }

  // appBar
  Widget _buildAppBar(){
    return AppBar(
      leading: Container(
        width: 30,
        height: 30,
        margin: const EdgeInsets.only(left: 10,top: 5),
        child: CircleAvatar(
          backgroundImage: AssetImage(imageUrl)  //NetworkImage(imageUrl),
        ),
      ),
      title: _buildTitle(),
      actions: _buildActions(),
      bottom: _buildAppBarBottom()
    );
  }

  List<Widget> _buildActions(){
    return [
      Badge(
        position: BadgePosition.topEnd(top: 10, end: 10),
        badgeContent: null,
        child: Container(
          margin: const EdgeInsets.only(top: 5),
          child: IconButton(
            splashRadius: 25,
            icon: Icon(Icons.games), 
            onPressed: (){
              BotToast.showText(text: 'games');
            }
          ),
        )
      ),
      Badge(
        position: BadgePosition.topEnd(top: 0, end: 0),
        badgeContent: Center(
          child: Text('2',style: TextStyle(color: Colors.white))
        ),
        child: Container(
          margin: const EdgeInsets.only(top: 5),
          child: IconButton(
            splashRadius: 25,
            icon: Icon(Icons.mail), 
            onPressed: (){
              BotToast.showText(text: 'mail');
            }
          )
        ),
      ),
      
    ];
  }
  // title
  Widget _buildTitle(){
    return Expanded(
      child: Container(
        margin: const EdgeInsets.only(top: 5),
        padding: const EdgeInsets.only(left: 10,right: 10),
        height: 30,
        alignment:Alignment.centerLeft,
        child: Icon(Icons.search,size: 16.0,color:Colors.grey),
        decoration: BoxDecoration(
          color: Theme.of(context).dividerColor,
          borderRadius: BorderRadius.circular(100)
        ),
      )
    );
  }
  //
  Widget _buildAppBarBottom(){
    return PreferredSize(
      preferredSize: Size.fromHeight(40),
      child: Theme(
        data: Theme.of(context).copyWith(
          splashColor:Colors.transparent,
          highlightColor: Colors.transparent,
        ),
        child: TabBar(
          isScrollable: true,
          indicatorWeight: 3.0,
          controller: _tabController,
          tabs: tabs
        )
      )
    );
  }

}

