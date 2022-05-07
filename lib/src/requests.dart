import 'package:astrobinned_lib/astrobinned_lib.dart';

class Requests {
  AstroBinnedLib base;
  Requests({required this.base});

  Map<String, String> getHeaders() {
    Map<String, String> headers = {
      'Accept': 'application/json',
      'Content-Type': 'application/json'
    };

    if (base.authentication.authToken.isNotEmpty) {
      headers.addEntries([
        MapEntry('Authorization', 'Token ' + base.authentication.authToken)
      ]);
    }

    return headers;
  }
}
