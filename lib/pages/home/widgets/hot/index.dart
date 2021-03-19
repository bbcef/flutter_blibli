import 'package:bot_toast/bot_toast.dart';
import 'package:flutter/material.dart';

class HotPage extends StatefulWidget {
  @override
  _HotPageState createState() => _HotPageState();
}

class _HotPageState extends State<HotPage> {
  bool loading = false;
  List movies = [];

  Widget _loadingWidget(){
    return Center(
      child: ClipRRect(
        borderRadius: BorderRadius.circular(4),
        child: Container(
          color: Theme.of(context).cardColor,
          width: 100,
          height: 100,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              CircularProgressIndicator(),
              Text("加载中...")
            ],
          ),
        ),
      )
    );
  }
  Widget _warningWidget(){
    return Center(
      child: GestureDetector(
        onTap: () {},
        child: Container(
          width: double.infinity,
          height: double.infinity,
          color:Colors.transparent,
          alignment: Alignment.center,
          child: Text('数据加载失败，轻触重试...'),
        ),
      )
    );
  }
  @override
  Widget build(BuildContext context) {
    // if(movies.length == 0 && loading == false){
    //   return _warningWidget();
    // }
    return ListView.builder(
      itemCount: 55,
      itemBuilder: (BuildContext context,int index){
        return BListItem(index);
      }
    );
  }
}




class BListItem extends StatefulWidget {
  int index;

  BListItem(this.index);
  @override
  _BListItemState createState() => _BListItemState();
}

class _BListItemState extends State<BListItem> {

  // 图片
  Widget _buildImg(String image){
    return ClipRRect(
      borderRadius: BorderRadius.circular(3),
      child: FadeInImage.assetNetwork(
        placeholder: "assets/images/my.webp", 
        image: image,
        fit:BoxFit.cover,
        width: 130,
        height: 95
      ),
    );
    
    
  }
  // 文字信息
  Widget _buildText(int index){
    return Expanded(
      child: Container(
        margin: EdgeInsets.only(left:8),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _buildTextTitle(index),
            SizedBox(height:13.0),
            _buildPlayInfo(),
            _buildOther()
          ]
        )
      ),
    );
  }
  // 标题
  Widget _buildTextTitle(int index){
    return Row(
      children: [
        Container(
          padding: EdgeInsets.all(3.0),
          alignment: Alignment.center,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(3),
            color: Theme.of(context).accentColor,
          ),
          child: Text((index + 1).toString(),style:TextStyle(color:Colors.white)),
        ),
        SizedBox(width:5),
        Expanded(
          child: Text('乘风破浪' * 8,maxLines: 2,overflow: TextOverflow.ellipsis, style: TextStyle(fontSize: 14,fontWeight: FontWeight.w600)),
        )
      ],
    );
  }
  // 播放数据
  Widget _buildPlayInfo(){
    const double iconSize =  12.0;
    const TextStyle textStyle = TextStyle(fontSize: 14.0);
    return Row(
      children: [
        Icon(Icons.play_circle_fill_outlined,size: 12,),
        Text('5555',style: textStyle,),
        SizedBox(width:5),
        Icon(Icons.text_fields,size: iconSize,),
        Text('5555',style: textStyle,),
        SizedBox(width:5),
        Icon(Icons.person,size: iconSize,),
        Expanded(
          child: Text('55555',maxLines: 1,overflow: TextOverflow.ellipsis,style: textStyle,)
        )
      ]
    );
  }
  // 评分
  Widget _buildOther(){
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text('综合评分：5555',style: TextStyle(fontSize: 14.0),),
        IconButton(
          iconSize: 16,
          splashRadius: 15,
          icon: Icon(Icons.more_vert,size: 16,),
          onPressed: (){

          }
        )
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(8),
      decoration: BoxDecoration(
        border: Border(
          bottom:BorderSide(
            color: Colors.grey,
            width: 1
          )
        )
      ),
      child: Stack(
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _buildImg('assets/images/my.webp'),
              _buildText(widget.index),
            ],
          ),
        ],
      )
    );
  }
}
