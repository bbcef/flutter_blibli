import 'package:flutter/material.dart';


class DynamicPage extends StatefulWidget {
  @override
  _DynamicPageState createState() => _DynamicPageState();
}

class _DynamicPageState extends State<DynamicPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('DynamicPage')
      ),
      body: Container(
        alignment:Alignment.center,
        child: Text('DynamicPage')
      )
    );
  }
}