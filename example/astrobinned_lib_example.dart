import 'package:astrobinned_lib/astrobinned_lib.dart';

void main() async {
  var astroBinnedLib = AstroBinnedLib();
  var loginSuccess = await astroBinnedLib.authentication
      .login('menno@vleeuwen.me', 'qmb8DVQ.kwu_dwz!tha');

  if (loginSuccess) {
    var unreadCount =
        await astroBinnedLib.profile.notifications.getUnreadCount();
    print('Unread count: $unreadCount');
  } else {
    print('Failed to login! :(');
  }
}
