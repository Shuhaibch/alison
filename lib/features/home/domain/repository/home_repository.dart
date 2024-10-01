import 'dart:convert';
import 'dart:developer';
import 'package:alison/features/home/data/model/home_resp_model.dart';
import 'package:alison/features/login/data/model/user_model.dart';
import 'package:http/http.dart' as http;

class HomeController {
  Future fetchData() async {
    const String url = 'https://swan.alisonsnewdemo.online/api/login';
    final Map<String, String> headers = {"Content-Type": "application/json"};

    final Map<String, dynamic> body = {
      'email_phone': '8547541134',
      'password': '12345678',
    };
    try {
      final http.Response response = await http.post(
        Uri.parse(url),
        headers: headers,
        body: jsonEncode(body),
      );
      if (response.statusCode == 200) {
        final LoginRespModel data =
            LoginRespModel.fromJson(jsonDecode(response.body));
        
        
        
        
        
        const String homeurl = 'https://swan.alisonsnewdemo.online/api/home';
        final Map<String, String> homeheaders = {
          "Content-Type": "application/json"
        };
        log(data.customerdata!.token.toString());
        final Map<String, dynamic> homebody = {
          'id': data.customerdata!.id,
          'token': data.customerdata!.token,
        };
        try {
          final http.Response response = await http.post(
            Uri.parse(homeurl),
            headers: homeheaders,
            body: jsonEncode(homebody),
          );
          if (response.statusCode == 200 || response.statusCode == 201) {
            log(response.body.toString());
            final HomeRespModel data =
                HomeRespModel.fromJson(jsonDecode(response.body));
            if (data.message == 'Invalid Token') {
              return {
                'response': 'error',
                'data': data.message,
              };
            } else {
              return {
                'response': 'success',
                'data': data,
              };
            }
          } else {
            final resp = jsonDecode(response.body);
            return {
              'response': 'error',
              'message': resp['message'],
            };
          }
        } catch (e) {
          return {
            'response': 'error',
            'message': 'Error While Loading Categories',
          };
        }
      } else {
        return {
          'response': 'error',
          'data': "data.message",
        };
      }
    } catch (e) {
      print(e);
      return {
        'response': 'error',
        'data': " data.message",
      };
    }
  }
}
