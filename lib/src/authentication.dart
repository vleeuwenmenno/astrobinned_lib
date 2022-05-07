import 'dart:convert';

import 'package:astrobinned_lib/astrobinned_lib.dart';
import 'package:astrobinned_lib/src/responses/login.dart';
import 'package:astrobinned_lib/src/urls.dart';
import 'package:http/http.dart' as http;

class Authentication {
  AstroBinnedLib base;
  Authentication({required this.base});

  String authToken = "";

  Future<bool> login(String username, String password) async {
    var data = {"username": username, "password": password};
    var url = Uri.parse(loginUrl);
    var response = await http.post(url,
        headers: base.requests.getHeaders(), body: json.encode(data));

    if (response.statusCode == 200) {
      var responseObject = LoginResponse.fromJson(jsonDecode(response.body));
      authToken = responseObject.token;
      return responseObject.token.isNotEmpty;
    }

    return response.statusCode == 200;
  }
}
