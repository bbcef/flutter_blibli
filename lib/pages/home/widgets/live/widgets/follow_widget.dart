import 'package:flutter/material.dart';
import 'package:bot_toast/bot_toast.dart';


class FollowWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SliverPadding(
      padding: const EdgeInsets.only(left:8,right: 8,bottom: 8),
      sliver: SliverToBoxAdapter(
        child: Container(
          margin: const EdgeInsets.only(bottom:8.0),
          padding: const EdgeInsets.all(8),
          decoration: BoxDecoration(
            color: Theme.of(context).primaryColor,
            borderRadius: BorderRadius.circular(3.0),
          ),
          child: Column(
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Row(
                    children: [
                      Text('我的关注',
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.bold
                        )
                      ),
                      SizedBox(width:3),
                      Text('1',
                        style: TextStyle(
                          fontSize: 14,
                          color: Theme.of(context).accentColor,
                        )
                      ),
                      Text('人正在直播',
                        style: TextStyle(
                          fontSize: 14,
                          color:Colors.grey,
                        )
                      ),
                      Icon(Icons.live_tv,size:12)
                    ]
                  ),
                  Row(
                    children: [
                      Text(
                        '查看全部',
                        style:TextStyle(
                          fontSize: 12
                        )
                      ),
                      Icon(Icons.keyboard_arrow_right,size:14)
                    ]
                  )
                ]
              ),
              SizedBox(height:8),
              Row(
                children: [
                  Container(
                    width: 150,
                    height: 60,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(3),
                        bottomLeft: Radius.circular(3),
                      ),
                      color: Theme.of(context).accentColor
                    ),
                    child: Stack(
                      children: [
                        Image.asset(
                          'assets/images/bgimg.jpg',
                          fit: BoxFit.cover,
                          width: double.infinity,
                        ),
                        Positioned(
                          left: 3,
                          bottom: 3,
                          child: Row(
                            children: [
                              Icon(Icons.person_pin_circle,size: 12),
                              Text('188',style: TextStyle(fontSize: 12),)
                            ],
                          ),
                        )
                      ],
                    )
                  ),
                  Expanded(
                    child: Container(
                      height: 60,
                      alignment:Alignment.center,
                      decoration: BoxDecoration(
                        border: Border.all(color: Theme.of(context).accentColor, width: 1), // 边色与边宽度
                        borderRadius: BorderRadius.only(
                          topRight: Radius.circular(3),
                          bottomRight: Radius.circular(3),
                          
                        ),
                        color: Colors.grey
                      ),
                      child: ListTile(
                        dense: true,
                        leading: ClipOval(
                          child: Image.asset('assets/images/my.webp',fit:BoxFit.cover),
                        ),
                        title: Text('title'*4,maxLines: 1,overflow: TextOverflow.ellipsis,),
                        subtitle: Text('subtitle'*4,maxLines: 1,overflow: TextOverflow.ellipsis,)
                      )
                    )
                  )
                ],
              )
            ]
          )
        )
      ),
    );
  }
}

