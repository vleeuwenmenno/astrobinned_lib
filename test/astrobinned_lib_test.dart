import 'package:astrobinned_lib/astrobinned_lib.dart';
import 'package:test/test.dart';

void main() async {
  var astroBinnedLib = AstroBinnedLib();
  var loginResult = await astroBinnedLib.authentication
      .login('menno@vleeuwen.me', 'fpr!QKA3trf.rqt_kut');

  group('Profile:', () {
    test('Login', () async {
      expect(loginResult, isTrue);
    });

    test('Get user profile', () async {
      var user = await astroBinnedLib.profile.getUserProfile(109239);
      expect(user?.id, 109239);
      expect(user?.acceptTos, isTrue);
      expect(user?.job, "Software Engineer");
    });

    test('Get current user profile', () async {
      var user = await astroBinnedLib.profile.getCurrentUserProfile();
      expect(user?.id, 109239);
      expect(user?.acceptTos, isTrue);
      expect(user?.job, "Software Engineer");
    });

    test('Get user *', () async {
      var user = await astroBinnedLib.profile.getUser(109283);
      expect(user?.id, 109283);
      expect(user?.isActive, isTrue);
      expect(user?.username, "vleeuwenmenno");
    });
  });

  group('Notifications:', () {
    test('Get notifications', () async {
      var notifications =
          await astroBinnedLib.profile.notifications.getNotifications();
      expect(notifications.length, 3);
    });

    test('Update notifications', () async {
      var notifications =
          await astroBinnedLib.profile.notifications.getNotifications();
      for (var notification in notifications) {
        notification.read = false;
        await astroBinnedLib.profile.notifications
            .updateNotification(notification);
      }
      var unreadCount =
          await astroBinnedLib.profile.notifications.getUnreadCount();
      expect(unreadCount, 3);
    });

    test('Get unread notifications count', () async {
      var unreadCount =
          await astroBinnedLib.profile.notifications.getUnreadCount();
      expect(unreadCount, 3);
    });

    test('Mark all notifications as read', () async {
      var markedAsRead =
          await astroBinnedLib.profile.notifications.markAllAsRead();
      var unreadCount =
          await astroBinnedLib.profile.notifications.getUnreadCount();
      expect(markedAsRead, isTrue);
      expect(unreadCount, 0);
    });
  });

  group('User:', () {
    test('Get user subscription status', () async {
      var userSubscriptionStatus =
          await astroBinnedLib.profile.getUserSubscription(109283);
      expect(userSubscriptionStatus, isNotNull);
      expect(userSubscriptionStatus?.active, isNotNull);
    });

    test('Get subscriptions list', () async {
      var subscriptions = await astroBinnedLib.profile.getSubscriptions();
      expect(subscriptions, isNotEmpty);
    });
  });
}
