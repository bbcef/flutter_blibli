import 'package:flutter/material.dart';
import 'package:bot_toast/bot_toast.dart';


class LabelWidget extends StatelessWidget {
  List<Map> listData = [
    {'icon': Icons.add,'title':'全屏直播'},
    {'icon': Icons.add,'title':'英雄联盟'},
    {'icon': Icons.add,'title':'王者荣耀'},
    {'icon': Icons.add,'title':'娱乐'},
    {'icon': Icons.add,'title':'单机游戏'},
    {'icon': Icons.add,'title':'电台'},
    {'icon': Icons.add,'title':'虚拟主播'},
    {'icon': Icons.add,'title':'LOL手游'},
    {'icon': Icons.add,'title':'视频唱见'},
    {'icon': Icons.add,'title':'全部标签'},
  ];

  @override
  Widget build(BuildContext context) {
    return SliverPadding(
      padding: const EdgeInsets.all(8),
      sliver: SliverToBoxAdapter(
        child: Container(
          height: 160,
          // margin: const EdgeInsets.only(bottom:8.0),
          decoration: BoxDecoration(
            color: Theme.of(context).primaryColor,
            borderRadius: BorderRadius.circular(3.0),
          ),
          child: GridView.count(
            crossAxisCount: 5,
            mainAxisSpacing: 3,
            crossAxisSpacing: 3,
            children: listData.map((e){
              return InkWell(
                onTap:(){
                  BotToast.showText(text: e['title']);
                },
                child: Column(
                  crossAxisAlignment:CrossAxisAlignment.center,
                  children: [
                    Icon(
                      e['icon'],
                      size: 46,
                    ),
                    Text(
                      e['title'],
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(fontSize: 12.0,)
                    )
                  ],
                )
              );
            }).toList()
          )
        )
      ),
    );;
  }
}

