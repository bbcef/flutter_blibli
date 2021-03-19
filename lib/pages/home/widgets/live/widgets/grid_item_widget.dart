import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:bot_toast/bot_toast.dart';


class GridItemWidget extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(3),
        color: Theme.of(context).primaryColor
      ),
      child: Column(
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
              ),
              Positioned(
                top: 0,
                right: 0,
                child: Container(
                  padding: const EdgeInsets.all(3),
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(3),
                      bottomLeft: Radius.circular(3)
                    ),
                    gradient:LinearGradient(
                      colors: [
                        Color(0xFFFFFF00), 
                        Color(0xFF00FF00), 
                        Color(0xFF00FFFF)
                      ], 
                      begin: FractionalOffset(1, 0), 
                      end: FractionalOffset(0, 1)
                    )
                  ),
                  child: Text('百',style:TextStyle(fontSize:12)),
                )
              ),
              Positioned(
                top: 0,
                left: 0,
                child: Container(
                  padding: const EdgeInsets.all(3),
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    color: Theme.of(context).accentColor,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(3),
                      bottomRight: Radius.circular(3)
                    ),
                  ),
                  child: Text('全站Top10',style:TextStyle(fontSize:12)),
                )
              ),

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
                    InkWell(
                      onTap: (){
                        BotToast.showText(text: 'close');
                      },
                      child: Icon(Icons.close,size: 12)
                    ),
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}



