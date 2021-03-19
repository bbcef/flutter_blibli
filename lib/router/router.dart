import 'package:flutter/material.dart';
// app
import 'package:flutter_blibli/pages/app/guide/index.dart';
import 'package:flutter_blibli/pages/app/unknow/index.dart';

// page
import 'package:flutter_blibli/pages/index/index.dart';

class CsRouter{
  static final Map<String, WidgetBuilder> routes = {
    '/': (context) => GuidePage(),
    '/index': (context) => IndexPage()
  };

  static final String initialRoute = '/';

  // 
  static RouteFactory onGenerateRoute = (settings){
    
  };

  static RouteFactory onUnknownRoute = (settings){
    return MaterialPageRoute(
      builder: (context) => UnknowPage()
    );
  };
}