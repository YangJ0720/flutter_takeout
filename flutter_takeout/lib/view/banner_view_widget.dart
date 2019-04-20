import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

/// 广告轮播控件
class BannerViewWidget extends StatefulWidget {
  /// 广告图片url地址
  final List<String> urls = List<String>();

  BannerViewWidget() {
    urls.add(
        'https://img.mukewang.com/szimg/5c32c05b085f95bf06000338-360-202.jpg');
    urls.add(
        'https://img.mukewang.com/szimg/5c3ef588088403df06000338-360-202.jpg');
    urls.add(
        'https://img.mukewang.com/szimg/5c62a4dc0812e84106000338-360-202.jpg');
    urls.add(
        'https://img.mukewang.com/szimg/58f57d200001461105400300-360-202.jpg');
  }

  @override
  State<StatefulWidget> createState() {
    return BannerViewState();
  }
}

class BannerViewState extends State<BannerViewWidget> {
  static const platform = const MethodChannel('com.example.main');

  @override
  Widget build(BuildContext context) {
    return PageView.custom(
      onPageChanged: (index) {
        print('index = $index');
      },
      physics: PageScrollPhysics(parent: BouncingScrollPhysics()),
      childrenDelegate: SliverChildBuilderDelegate((context, index) {
        var url = widget.urls[index];
        return GestureDetector(
          onTap: () {
            /// 点击广告图片通知Native打开WebView
            platform.invokeMethod('startWebView');
            print('url = $url');
          },
          child: Image.network(
            url,
            fit: BoxFit.fill,
          ),
        );
      }, childCount: widget.urls.length),
    );
  }
}
