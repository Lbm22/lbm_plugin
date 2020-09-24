
import 'dart:async';
import 'dart:convert';

import 'package:flutter/services.dart';

import 'package:http/http.dart' as http;
class LbmPlugin {
  static const MethodChannel _channel =
      const MethodChannel('lbm_plugin');

  static Future<String> get platformVersion async {
    // final String version = await _channel.invokeMethod('getPlatformVersion');
     String BaseURL = "crmapi.lbmsolutions.in"; // Base Url
     String api_key =
        "eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ1c2VyIjoidGVzdCIsIm5hbWUiOiJ0ZXN0IiwicGFzc3dvcmQiOm51bGwsIkFQSV9USU1FIjoxNTk1NzM0NDM2fQ.rw5jGmbadmM5uS2pwH9VhsQN8cSvBFJoZuaEZliG9lQ";
      String LoginAPI = "/api/Auth_user";
     final paramDic = {
       "username": "rampawan@lbmsolutions.in",
       "password": "india123",
       "tokenid": "f2U-M6ZHS36pW9tMl6fUXJ:APA91bHRFNS2T0B4sApNqkxmfwut73tX9-AAP6DXDmOHxB0PxqeByBZOIyBg98Oe3HKHZQAewH3_B9imJX2JR21z8g0duVryZnjOd58hWfzrNripKinYbN1FyYHgMGB4eCzUhzHQRJIz",
       "tokenkey": "AAAAxpbi54Y:APA91bGw8qGpJeNrrSSUcalcCVpjgf9V0roCJ0T3t3epScnZPdH7Kn5ojpq9HzAMsu-dkcDvcDeTGj67jMDTErdgJC5vKj9QQ6Tt8hrrQe80iNsAzdJLBDX7sRGqXiMUzr5rID6Ep8yX",
     };
     final uri = new Uri.https(BaseURL, LoginAPI, paramDic);
     print("Get :"+uri.toString());
     var response = await http.get(uri, headers: {"Accept": "application/json",'authtoken': api_key});
     var data = json.decode(response.body);
     print(data);
     return data['data'][0]['phonenumber'].toString();

    final String version = "5";
    return version;
  }
}
