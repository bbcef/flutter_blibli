import 'package:flutter/material.dart';
import './grid_item_widget.dart';


class GridViewWidget extends StatefulWidget {
  @override
  _GridViewWidgetState createState() => _GridViewWidgetState();
}

class _GridViewWidgetState extends State<GridViewWidget> {
  

  @override
  Widget build(BuildContext context) {
    List<String> list = <String>[];
    for (var i = 0; i < 14; i++) {
      list.add((i + 1).toString());
    }
    return SliverPadding(
      padding: const EdgeInsets.only(left: 8,right:8 ,bottom: 8),
      sliver: SliverGrid.count(
        crossAxisCount: 2,
        mainAxisSpacing: 8, // 主轴方向上，item之间间距  通过crossAxisCount和mainAxisSpacing就能确定主轴方向item的长度
        crossAxisSpacing: 8, // 纵轴方向上，item之间的距离
        childAspectRatio: .9,
        // maxCrossAxisExtent: 225,
        children: list.map(
          (item) => GridItemWidget()
        ).toList(),
      )
    );
  }
}





