import 'dart:async';
import 'package:http/http.dart' as http;

const baseUrl = 'http://192.168.43.64/appemailkomp/api/';

class API {
  static Future getListMateri(){
    var url =baseUrl+ '/list_materi.php';
    return http.get(url);
  }

}