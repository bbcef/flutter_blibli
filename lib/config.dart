import 'package:flutter/material.dart';

class AppConfig{
  // ----------------------------初始化----------------------------
  // 主题 - blue
  static final Color primaryColor = Colors.blue;
  // 亮暗模式 - 跟随系统
  static final ThemeMode themeMode = ThemeMode.system;// ThemeMode.dark; // 
  // 是否显示性能浮层 - 不显示
  static final bool showPerformanceOverlay = false;
  // title 
  static final String title = 'flutter_blibli';
}

class HttpConfig{
  static const String baseUrl = 'https://httpbin.org';
  static const int timeout = 5000;
}

class ThemeConfig{
  // ----------------------------亮暗模式----------------------------
  // 
  static const accentColor =  Colors.pinkAccent;
  // tabbar
  static const tabBarTheme = TabBarTheme(
    labelColor: Colors.pinkAccent,
    
  );
  // bottomNavigationBar
  static const bottomNavigationBarTheme = BottomNavigationBarThemeData(
    elevation: 0,
    selectedIconTheme: IconThemeData(
      color: Colors.pinkAccent
    ),
    selectedItemColor: Colors.pinkAccent,
  );
  // Button 主题
  static const ButtonThemeData buttonTheme = ButtonThemeData(
    
  );
  // Card 主题
  static const CardTheme cardTheme = CardTheme(
    elevation: 5
  );
  // Text 主题
  static const TextTheme textTheme = TextTheme(
    bodyText1: TextStyle(fontSize: 16) 
  );

  static const floatingActionButtonTheme =  FloatingActionButtonThemeData(
    elevation: 0,
    
  );

  // 亮色模式
  static final ThemeData lightTheme = ThemeData(
    // 1. 亮度  
    brightness: Brightness.light,
    // 2. 相当于 同时设置了 primaryColor(决定 导航 TabBar 颜色) accentColor（组件等默认颜色）
    // primarySwatch: Colors.green,
    primaryColor: Colors.white,
    accentColor: accentColor,
    tabBarTheme: tabBarTheme.copyWith(
      unselectedLabelColor: Colors.black87,
    ),
    bottomNavigationBarTheme: bottomNavigationBarTheme,

    buttonTheme: buttonTheme,
    cardTheme: cardTheme,
    textTheme: textTheme,
    
    floatingActionButtonTheme: floatingActionButtonTheme
  );
  // 暗黑模式
  static final ThemeData darkTheme = ThemeData(
    // 1. 亮度  暗黑模式
    brightness: Brightness.dark,
    // 2. 相当于 同时设置了 primaryColor(决定 导航 TabBar 颜色) accentColor（组件等默认颜色）
    // primarySwatch: Colors.red,
    // primaryColor: Colors.red,
    accentColor: accentColor,
    tabBarTheme: tabBarTheme.copyWith(
      unselectedLabelColor: Colors.white70,
    ),
    bottomNavigationBarTheme: bottomNavigationBarTheme,
    buttonTheme: buttonTheme,
    cardTheme: cardTheme,
    textTheme: textTheme,


    floatingActionButtonTheme: floatingActionButtonTheme,

  );

}

