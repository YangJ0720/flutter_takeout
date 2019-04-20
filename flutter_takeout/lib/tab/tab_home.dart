import 'package:flutter/material.dart';
import 'package:flutter_takeout/network/dio_manager.dart';
import 'package:flutter_takeout/search.dart';
import 'package:flutter_takeout/view/banner_view_widget.dart';

/// 选项卡：首页
class TabHome extends StatelessWidget {
  /// 获取天气信息
  void _getWeatherInfo() async {
    DioManager.getWeatherInfo();
  }

  @override
  Widget build(BuildContext context) {
    _getWeatherInfo();
    return SafeArea(
      child: Column(
        children: <Widget>[
          Container(
            margin: EdgeInsets.fromLTRB(5, 0, 5, 0),
            child: Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Row(
                  children: <Widget>[
                    Image.asset(
                      'images/ic_location.png',
                      width: 36,
                      height: 36,
                    ),
                    Text(
                      '深圳市宝安区',
                      style: TextStyle(fontSize: 20),
                    ),
                    Image.asset(
                      'images/ic_arrow_down.png',
                      width: 16,
                      height: 8,
                    ),
                  ],
                ),
                Row(
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.fromLTRB(0, 0, 5, 0),
                      child: Image.asset(
                        'images/ic_scan_code.png',
                        width: 24,
                        height: 24,
                      ),
                    ),
                    Text(
                      '扫码',
                      style: TextStyle(color: Color(0xFF0DABFF)),
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(5, 0, 5, 0),
                      child: Image.asset(
                        'images/ic_weather_snow.png',
                        width: 20,
                        height: 20,
                      ),
                    ),
                    Text(
                      '25℃',
                      style: TextStyle(color: Color(0xFF0DABFF)),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.fromLTRB(0, 10, 0, 10),
            margin: EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: Color(0xFFEAEAEA),
              borderRadius: BorderRadius.all(
                Radius.circular(25),
              ),
            ),
            child: GestureDetector(
              onTap: () {
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => SearchWidget()));
              },
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.fromLTRB(0, 0, 5, 0),
                    child: Image.asset(
                      'images/ic_search.png',
                      width: 15,
                      height: 15,
                    ),
                  ),
                  Text(
                    '搜索商家、商品名称',
                    style: TextStyle(color: Color(0xFFA3A3A3)),
                  ),
                ],
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.fromLTRB(10, 0, 10, 0),
            height: 120,
            child: BannerViewWidget(),
            decoration: BoxDecoration(
                color: Color(0xFFEAEAEA),
                borderRadius: BorderRadius.all(Radius.circular(5))),
          ),
          Text(
            '优惠专区',
            style: TextStyle(fontSize: 24),
          ),
        ],
      ),
    );
  }
}
