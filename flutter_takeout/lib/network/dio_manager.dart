import 'package:dio/dio.dart';

/// 网络请求
class DioManager {

  /// 发送获取天气信息请求
  static Future<String> getWeatherInfo() async {
    var url = 'https://www.apiopen.top/weatherApi?city=深圳';
    Response response = await Dio().get(url);
    print('response = $response');
    if (response != null) {
      var data = response.data;
      print('data = $data');
    }
    return null;
  }

}