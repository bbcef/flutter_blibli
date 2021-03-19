import 'package:flutter/material.dart';
import './widgets/grid_view_widget.dart';
import './widgets/carousel_widget.dart';


class RecommendPage extends StatefulWidget {
  @override
  _RecommendPageState createState() => _RecommendPageState();
}

class _RecommendPageState extends State<RecommendPage> {
  @override
  Widget build(BuildContext context) {
    return Scrollbar(
      thickness: 3,
      radius: Radius.circular(8),
      child: CustomScrollView(
        // physics: BouncingScrollPhysics(),
        slivers: [
          CarouselWidget(),
          GridViewWidget()
        ],
      ),
    );
  }
}

