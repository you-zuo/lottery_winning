import 'package:lottery_winning/export.dart';

//Dio请求封装
class HttpUtils {
  // //get请求
  // static void getHttp({String url, onCallBack}) async {
  //   Response response;
  //   try {
  //     response = await Dio().get(url);
  //     onCallBack(response.toString());
  //     printUtil.print("get请求成功：${response.toString()}");
  //   } on DioError catch (e) {
  //     getIt<NavigateService>().pushNamed('/errorPage');
  //     if (CancelToken.isCancel(e)) {
  //       printUtil.print("get请求取消：${e.message}");
  //     }
  //     printUtil.print("get请求发生错误：$e");
  //   }
  // }

  // //post请求
  // static void postHttp({String url, Map data, onCallBack}) async {
  //   Response response;
  //   try {
  //     response = await Dio().post(url, data: data);
  //     onCallBack(response.toString());
  //     printUtil.print("post请求成功：${response.toString()}");
  //   } on DioError catch (e) {
  //     getIt<NavigateService>().pushNamed('/errorPage');
  //     if (CancelToken.isCancel(e)) {
  //       printUtil.print("get请求取消：${e.message}");
  //     }
  //     printUtil.print("get请求发生错误：$e");
  //   }
  // }

  static Dio dio;

  /// default options
  static const String API_PREFIX = 'http://h.playdota.cc';
  static const int CONNECT_TIMEOUT = 10000;
  static const int RECEIVE_TIMEOUT = 3000;

  /// http request methods
  static const String GET = 'get';
  static const String POST = 'post';
  static const String PUT = 'put';
  static const String PATCH = 'patch';
  static const String DELETE = 'delete';

  /// 创建 dio 实例对象
  static Dio createInstance() {
    if (dio == null) {
      /// 全局属性：请求前缀、连接超时时间、响应超时时间
      BaseOptions options = BaseOptions(
        baseUrl: API_PREFIX,
        connectTimeout: CONNECT_TIMEOUT,
        receiveTimeout: RECEIVE_TIMEOUT,
      );

      dio = Dio(options);
    }
    return dio;
  }

  /// request method
  static Future<Map> request(String url, {data, method}) async {
    data = data ?? {};
    method = method ?? 'GET';

    /// restful 请求处理
    /// /gysw/search/hist/:user_id        user_id=27
    /// 最终生成 url 为     /gysw/search/hist/27
    data.forEach((key, value) {
      if (url.indexOf(key) != -1) {
        url = url.replaceAll(':$key', value.toString());
      }
    });

    /// 打印请求相关信息：请求地址、请求方式、请求参数
    printUtil.print('请求地址：【' + method + '  ' + url + '】');
    printUtil.print('请求参数：' + data.toString());

    Dio dio = createInstance();
    var result;

    try {
      Response response =
          await dio.request(url, data: data, options: Options(method: method));

      result = response.data;
      printUtil.print('响应数据：${response.hashCode}');

      /// 打印响应相关信息
      printUtil.print('响应数据：' + response.toString());
    } on DioError catch (e) {
      /// 打印请求失败相关信息
      printUtil.print('请求出错：' + e.toString());
    }

    return result;
  }

  /// 清空 dio 对象
  static clear() {
    dio = null;
  }
}
