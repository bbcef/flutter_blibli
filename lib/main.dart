import 'package:flutter/material.dart';
// 国际化
import 'package:flutter_localizations/flutter_localizations.dart';
// 
import 'package:flutter/services.dart';
import 'config.dart';
// botToat 
import 'package:bot_toast/bot_toast.dart';
/// route
import 'package:flutter_blibli/router/router.dart';
// getx
import 'package:get/get.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  // 透明状态栏
  if (GetPlatform.isAndroid) {
    SystemUiOverlayStyle systemUiOverlayStyle = SystemUiOverlayStyle(statusBarColor: Colors.transparent);
    SystemChrome.setSystemUIOverlayStyle(systemUiOverlayStyle);
  }
  runApp(MyApp());
}




class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      enableLog: true,
      defaultTransition: Transition.fade,
      opaqueRoute: Get.isOpaqueRouteDefault,
      popGesture: Get.isPopGestureEnable,
      
      debugShowCheckedModeBanner: false,
      title: AppConfig.title,
      themeMode: AppConfig.themeMode,
      theme: ThemeConfig.lightTheme,
      darkTheme: ThemeConfig.darkTheme,
      showPerformanceOverlay: false,
      routes: CsRouter.routes,
      initialRoute: CsRouter.initialRoute,
      onGenerateRoute: CsRouter.onGenerateRoute,
      onUnknownRoute: CsRouter.onUnknownRoute,
      // 
      localizationsDelegates: [
        GlobalCupertinoLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate
      ],
      supportedLocales: [
        const Locale('zh', 'CH'),
        const Locale('en', 'US'),
      ],
      // BotToastInit
      builder: BotToastInit(),
      navigatorObservers: [BotToastNavigatorObserver()],
    );
  }
}




