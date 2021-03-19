
import 'package:flutter/material.dart';
import './widgets/label_widgt.dart';
import './widgets/follow_widget.dart';
import './widgets/grid_view_widget.dart';

class LivePage extends StatefulWidget {
  @override
  _LivePageState createState() => _LivePageState();
}

class _LivePageState extends State<LivePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _builderBody(),
      floatingActionButton: _builderFloatButton()
    );
  }



  Widget _builderBody(){
    return Scrollbar(
      thickness: 3,
      radius: Radius.circular(8),
      child: CustomScrollView(
        slivers: [
          LabelWidget(),
          FollowWidget(),
          _builderTitle(),
          SliverPadding(
            padding: const EdgeInsets.all(8),
            sliver: GridViewWidget()
          ),
        ],
      ),
    );
  }
  Widget _builderTitle(){
    return SliverPadding(
      padding: const EdgeInsets.only(left: 8,right: 8),
      sliver: SliverToBoxAdapter(
        child: Row(
          children: [
            Icon(Icons.live_help_outlined,size: 16,
              color: Theme.of(context).accentColor.withOpacity(0.5),
            ),
            Text('推荐直播',
              style: TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: 14
              )
            )
          ]
        )
      ),
    );
  }


  FloatingActionButton _builderFloatButton(){
    return FloatingActionButton(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('我要'),
          Text('直播')
        ]
      ),
      onPressed: (){},
    );
  }
}



