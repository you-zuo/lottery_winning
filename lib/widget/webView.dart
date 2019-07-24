import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class WebViewPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: WebView(
        initialUrl: " http://m.baidu.com/?cip=125.80.136.56&baiduid=BE07A2336861F44FEA7223B226C8F640&from=844b&vit=fps?from=844b&vit=fps&index=&ssid=0&bd_page_type=1&logid=8337914604014177354&pu=sz%401321_480&t_noscript=jump",
      ),
    );
  }
}
