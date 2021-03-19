import 'package:bot_toast/bot_toast.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class GridItemWidget extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(3),
        color: Theme.of(context).primaryColor
      ),
      child: Stack(
        children: [
          Column(
            children: [
              Stack(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.only(topLeft: Radius.circular(3),topRight: Radius.circular(3)),
                    child: Image.asset(
                      'assets/images/my.webp',
                      width: double.infinity,
                      height: 115,
                      fit: BoxFit.cover,
                    ),
                  ),
                  
                  Positioned(
                    bottom: 3,
                    left: 3,
                    right: 3,
                    child: Container(
                      padding: const EdgeInsets.all(3),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text('463.5万',style: TextStyle(fontSize: 12.0)),
                          Text('16.6万',style: TextStyle(fontSize: 12.0))
                        ],
                      ),
                    )
                  )
                ],
              ),
              Container(
                padding: const EdgeInsets.all(5),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      '飞驰人生' * 10,
                      style: TextStyle(
                        fontSize: 12.0
                      ),
                      maxLines: 2,
                      softWrap: true,
                      textAlign: TextAlign.left,
                      overflow: TextOverflow.ellipsis,
                    ),
                    SizedBox(height: 8),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text('电影',style: TextStyle(fontSize: 12),),
                      ],
                    )
                  ],
                ),
              )
            ],
          ),
          Positioned.fill(
            child: Material(
              color: Colors.transparent,
              child: InkWell(
                splashColor: Colors.white.withOpacity(0.3),
                onTap: (){},
                onLongPress: showDialog,
              ),
            )
          ),
          Positioned(
            bottom: 9,
            right: 5,
            child: InkWell(
              onTap: showDialog,
              child: Icon(Icons.more_vert,size: 14)
            )
          )
        ],
      )
    );
  }


  void showDialog(){
    BotToast.showText(text: 'dialog');
  }
}



