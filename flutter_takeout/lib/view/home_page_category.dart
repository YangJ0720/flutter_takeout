import 'package:flutter/material.dart';

class HomePageCategory extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return PageView(
      scrollDirection: Axis.horizontal,
      children: <Widget>[
        HomePageContent(),
        HomePageContent(),
      ],
    );
  }
}

class HomePageContent extends StatelessWidget {
  final _column = List<Column>();

  Column createColumn(String path, String text) {
    return Column(
      children: <Widget>[
        Image.asset(
          path,
          width: 40,
          height: 40,
        ),
        Text(text),
      ],
    );
  }

  void initialize() {
    _column.add(createColumn('images/ic_item_apple.png', '苹果'));
    _column.add(createColumn('images/ic_item_burger.png', '汉堡'));
    _column.add(createColumn('images/ic_item_cola.png', '可乐'));
    _column.add(createColumn('images/ic_item_drink.png', '饮料'));
    _column.add(createColumn('images/ic_item_flower.png', '花朵'));
    _column.add(createColumn('images/ic_item_leg.png', '鸡腿'));
    _column.add(createColumn('images/ic_item_sydney.png', '雪梨'));
    _column.add(createColumn('images/ic_item_watermelon.png', '西瓜'));
  }

  @override
  Widget build(BuildContext context) {
    initialize();
    return Column(
      children: <Widget>[
        Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            _column[0],
            _column[1],
            _column[2],
            _column[3],
          ],
        ),
        Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            _column[4],
            _column[5],
            _column[6],
            _column[7],
          ],
        ),
      ],
    );
  }
}
