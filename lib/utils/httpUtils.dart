import 'package:lottery_winning/export.dart';

//Dio请求封装
class HttpUtils {
  //get请求
  static void getHttp({String url, onCallBack}) async {
    Response response;
    try {
      response = await Dio().get(url);
      onCallBack(response.toString());
    } on DioError catch (e) {
      if (CancelToken.isCancel(e)) {
        print("get请求取消：" + e.message);
      }
      print("get请求发生错误：$e");
    }
  }

  //post请求
  static void postHttp({String url, Map data, onCallBack}) async {
    Response response;
    try {
      response = await Dio().post(url, data: data);
      onCallBack(response.toString());
    } on DioError catch (e) {
      if (CancelToken.isCancel(e)) {
        print("get请求取消：" + e.message);
      }
      print("get请求发生错误：$e");
    }
  }
}
