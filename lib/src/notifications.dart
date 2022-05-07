import 'dart:convert';

import 'package:astrobinned_lib/src/astrobinned_lib_base.dart';
import 'package:astrobinned_lib/src/models/notification.dart';
import 'package:astrobinned_lib/src/responses/notifications.dart';
import 'package:astrobinned_lib/src/urls.dart';

import 'package:http/http.dart' as http;

class Notifications {
  AstroBinnedLib base;
  Notifications({required this.base});

  Future<List<Notification>> getNotifications({int page = 1}) async {
    var url = Uri.parse(notificationsUrl + page.toString());
    var response = await http.get(url, headers: base.requests.getHeaders());

    if (response.statusCode == 200) {
      var responseObject =
          NotificationsResponse.fromJson(jsonDecode(response.body));
      if (responseObject.results != null) {
        return responseObject.results!;
      }

      return [];
    }

    throw Exception("Failed to retrieve notifications!");
  }

  Future<Notification?> getNotificationById(int notificationId) async {
    var url = Uri.parse(notificationByIdUrl + notificationId.toString());
    var response = await http.get(url, headers: base.requests.getHeaders());

    switch (response.statusCode) {
      case 200:
        return Notification.fromJson(jsonDecode(response.body));
      case 404:
        return null;
      default:
        throw Exception(
            "Failed to retrieve notification $notificationId server returned ${response.statusCode}");
    }
  }

  Future<Notification?> updateNotification(Notification notification) async {
    var url = Uri.parse(notificationByIdUrl + notification.id.toString() + "/");
    var response = await http.put(url,
        headers: base.requests.getHeaders(),
        body: json.encode(notification.toJson()));

    switch (response.statusCode) {
      case 200:
        return Notification.fromJson(jsonDecode(response.body));
      case 404:
        return null;
      default:
        throw Exception(
            "Failed to update notification ${notification.id} server returned ${response.statusCode}");
    }
  }

  Future<int?> getUnreadCount() async {
    var url = Uri.parse(notificationUnreadCountUrl);
    var response = await http.get(url, headers: base.requests.getHeaders());

    switch (response.statusCode) {
      case 200:
        return int.parse(response.body);
      case 404:
        return null;
      default:
        throw Exception(
            "Failed to fetch unread notification count, server returned ${response.statusCode}");
    }
  }

  Future<bool> markAllAsRead() async {
    var url = Uri.parse(notificationMarkAllAsReadUrl);
    var response = await http.post(url, headers: base.requests.getHeaders());
    return response.statusCode == 200;
  }
}
