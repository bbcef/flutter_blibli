import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

class GuidePage extends StatefulWidget {
  @override
  _GuidePageState createState() => _GuidePageState();
}

class _GuidePageState extends State<GuidePage> {
  int second = 3;
  Timer _timer;

  @override
  void initState() {
    super.initState();

    _timer = Timer.periodic(Duration(seconds: 1), (timer) {
      setState(() {
        second = second - 1;
      });
      if (second == 0) {
        //停止计时 去首页面
        _timer.cancel();
        Get.offAllNamed('/index');
        return;
      }
    });
  }
  
  @override
  void dispose() {
    if (_timer.isActive) {
      _timer.cancel();
    }
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/guide_02.jpg'),
                fit: BoxFit.cover,
              )
            ),
          ),
          Positioned(
            bottom: 20,
            right: 20,
            child: Container(
              padding: const EdgeInsets.only(top: 5,bottom: 5,left: 15,right: 15),
              decoration: BoxDecoration(
                color: Colors.black26,
                borderRadius: BorderRadius.circular(15)
              ),
              child: InkWell(
                onTap: () => Get.offAllNamed('/index'),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('跳过 '),
                    Text('$second'),
                  ]
                )
              )
              
            )
          )
        ]
      )
    );
  }
}


