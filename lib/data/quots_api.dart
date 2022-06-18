import 'dart:async';
import 'package:http/http.dart' as http;


class QuotsApi {
  static Future getQuots() async {
    http.get(
      Uri.parse("http://dynamichubscom.ipage.com/wid_bongobondhu/getQuote.php"),
    );
  }
}



