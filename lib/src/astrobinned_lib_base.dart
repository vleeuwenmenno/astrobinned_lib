import 'package:astrobinned_lib/src/authentication.dart';
import 'package:astrobinned_lib/src/profile.dart';
import 'package:astrobinned_lib/src/requests.dart';

class AstroBinnedLib {
  late Profile profile;
  late Authentication authentication;
  late Requests requests;

  AstroBinnedLib() {
    profile = Profile(base: this);
    authentication = Authentication(base: this);
    requests = Requests(base: this);
  }
}
