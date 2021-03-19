import 'dart:io';
import 'package:flutter/services.dart';
import 'package:flutter/material.dart';
import 'package:bot_toast/bot_toast.dart';
import './widgets/bottomNavigationBar.dart';


class IndexPage extends StatefulWidget {
  @override
  _IndexPageState createState() => _IndexPageState();
}

class _IndexPageState extends State<IndexPage> with TickerProviderStateMixin  {

  DateTime lastPopTime;
  int _selectedIndex = 0;

  final List<BottomNavigationBarItemClass> barItems = [
    BottomNavigationBarItemClass(Icons.home,'首页'),
    BottomNavigationBarItemClass(Icons.menu_book,'频道'),
    BottomNavigationBarItemClass(Icons.dynamic_feed,'动态',spot: true,content: '16'),
    BottomNavigationBarItemClass(Icons.card_membership,'会员购'),
    BottomNavigationBarItemClass(Icons.person_pin ,'我的'),
  ];
  

  void _onItemTapped(int index) {
    if(index == 2) {
      if(barItems[2].spot == false) {
        setState(() { 
          barItems[2].spot = true;
          barItems[2].content = '16';
        });
        
      } else {
        setState(() {
          barItems[2].spot = false;
          barItems[2].content = '';     
        });
        
      }
    }

    
    
    setState(() {
      _selectedIndex = index;
    });
  }

  void closeApp() {
    SystemChannels.platform.invokeMethod("SystemNavigator.pop");
  }
  
  // 点击返回键的操作
  signout() async {
    if(lastPopTime == null || DateTime.now().difference(lastPopTime) > Duration(seconds: 2)){
      lastPopTime = DateTime.now();
      BotToast.showText(text:'再按一次退出');
    }else{
      lastPopTime = DateTime.now();
      closeApp();
    }
  }

  
  @override
  void dispose() {
    super.dispose();
    if(lastPopTime != null){
      lastPopTime = null;
    }
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () => signout(),
      child: Scaffold(
        body: IndexedStack(
          index: _selectedIndex,
          children: pages
        ),
        bottomNavigationBar: _buildBottomNavigationBar(),
      )
    );
  }

  Widget _buildBottomNavigationBar(){
    return BottomNavigationBar(
      backgroundColor: Theme.of(context).primaryColor.withOpacity(0.1),
      items: bottomNavigationBarItems(barItems),
      showSelectedLabels: true,
      type: BottomNavigationBarType.fixed,
      selectedFontSize: 12,
      unselectedFontSize: 12,
      currentIndex: _selectedIndex,
      onTap: _onItemTapped,
    );
  }


}

