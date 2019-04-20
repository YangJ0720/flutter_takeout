import 'package:flutter/material.dart';

/// 搜索商家、商品名称
class SearchWidget extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return SearchWidgetState();
  }
}

class SearchWidgetState extends State<SearchWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text('搜索商家、商品名称'),
      ),
    );
  }
}
