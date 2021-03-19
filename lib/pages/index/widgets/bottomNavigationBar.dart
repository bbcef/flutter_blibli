import 'package:flutter/material.dart';
import 'package:badges/badges.dart';

import 'package:flutter_blibli/pages/home/index.dart';
import 'package:flutter_blibli/pages/channel/index.dart';
import 'package:flutter_blibli/pages/dynamic/index.dart';
import 'package:flutter_blibli/pages/member/index.dart';
import 'package:flutter_blibli/pages/my/index.dart';


// 

class BottomNavigationBarItemClass {
  IconData icon;
  String label;

  bool spot;
  String content;

  BottomNavigationBarItemClass(
    this.icon,
    this.label,
    {
      this.spot = false,
      this.content,
    }
  );
}

List<BottomNavigationBarItem> bottomNavigationBarItems(List<BottomNavigationBarItemClass> bottomNavs){
  return List.generate(
    bottomNavs.length, (index) {
      final nav = bottomNavs[index];
      return BottomNavigationBarItem(
        label: nav.label,
        icon: Badge(
          position: BadgePosition(top: -15,end: -15),
          showBadge: nav.spot == true ? true : false,
          shape: BadgeShape.circle,
          borderRadius: BorderRadius.circular(100),
          child: Icon(nav.icon),
          badgeContent: (nav.spot == true && nav.content != null ) ? 
            Center(
              child: Text(nav.content,style: TextStyle(color: Colors.white,fontSize: 12))
            ): null,
        )
      );
    }
  );
}

List<Widget> pages = [
  HomePage(),
  ChannelPage(),
  DynamicPage(),
  MemberPage(),
  MyPage()
];
