import 'package:flutter/material.dart';
import 'package:flutter_takeout/tab/tab_home.dart';
import 'package:flutter_takeout/tab/tab_find.dart';
import 'package:flutter_takeout/tab/tab_order.dart';
import 'package:flutter_takeout/tab/tab_my.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  /// 选项卡当前选中下标
  var _tabIndex = 0;

  /// 选项卡标签
  var _tabLabel = ['首页', '发现', '订单', '我的'];

  /// 选项卡图片
  var _tabImage;

  /// 选项卡对象实例
  var _tabPage = [TabHome(), TabFind(), TabOrder(), TabMy()];

  /// 根据图片路径获取Image对象
  Image getTabImageByPath(String path) {
    return Image.asset(
      path,
      width: 48,
      height: 48,
    );
  }

  /// 根据选项卡下标获取Image对象
  Image getTabImageByIndex(int index) {
    if (index == _tabIndex) {
      return _tabImage[index][1];
    } else {
      return _tabImage[index][0];
    }
  }

  /// 根据选项卡下标获取Text对象
  Text getTabLabelByIndex(int index) {
    return Text(
      _tabLabel[index],
      style: TextStyle(fontSize: 12),
    );
  }

  /// 初始化选项卡图标
  initialize() {
    _tabImage = [
      [
        getTabImageByPath('images/ic_home_normal.png'),
        getTabImageByPath('images/ic_home_pressed.png'),
      ],
      [
        getTabImageByPath('images/ic_find_normal.png'),
        getTabImageByPath('images/ic_find_pressed.png'),
      ],
      [
        getTabImageByPath('images/ic_order_normal.png'),
        getTabImageByPath('images/ic_order_pressed.png'),
      ],
      [
        getTabImageByPath('images/ic_my_normal.png'),
        getTabImageByPath('images/ic_my_pressed.png'),
      ]
    ];
  }

  @override
  Widget build(BuildContext context) {
    initialize();
    return Scaffold(
      body: _tabPage[_tabIndex],
      bottomNavigationBar: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: getTabImageByIndex(0),
            title: getTabLabelByIndex(0),
          ),
          BottomNavigationBarItem(
            icon: getTabImageByIndex(1),
            title: getTabLabelByIndex(1),
          ),
          BottomNavigationBarItem(
            icon: getTabImageByIndex(2),
            title: getTabLabelByIndex(2),
          ),
          BottomNavigationBarItem(
            icon: getTabImageByIndex(3),
            title: getTabLabelByIndex(3),
          ),
        ],
        currentIndex: _tabIndex,
        type: BottomNavigationBarType.fixed,
        onTap: (index) {
          setState(() {
            _tabIndex = index;
          });
        },
      ),
    );
  }
}
