import 'dart:convert';

import 'package:astrobinned_lib/astrobinned_lib.dart';
import 'package:astrobinned_lib/src/notifications.dart';
import 'package:astrobinned_lib/src/urls.dart';

import 'package:http/http.dart' as http;

class Profile {
  AstroBinnedLib base;
  Profile({required this.base});

  late Notifications notifications = Notifications(base: base);

  Future<Subscription?> getUserSubscription(int userId) async {
    var url = Uri.parse(getUserSubscriptionStatusUrl + userId.toString());
    var response = await http.get(url, headers: base.requests.getHeaders());

    switch (response.statusCode) {
      case 200:
        return Subscription.fromJson(json.decode(response.body)[0]);
      case 404:
        return null;
      default:
        throw Exception(
            "Failed to fetch user subscription, server returned ${response.statusCode}");
    }
  }

  Future<List<SubscriptionType>> getSubscriptions() async {
    var url = Uri.parse(getSubscriptionsUrl);
    var response = await http.get(url, headers: base.requests.getHeaders());

    switch (response.statusCode) {
      case 200:
        List<SubscriptionType> subs = [];
        for (var sub in json.decode(response.body)) {
          subs.add(SubscriptionType.fromJson(sub));
        }
        return subs;
      default:
        throw Exception(
            "Failed to fetch subscriptions list, server returned ${response.statusCode}");
    }
  }

  Future<UserProfile?> getCurrentUserProfile() async {
    var url = Uri.parse(getCurrentUserProfileUrl);
    var response = await http.get(url, headers: base.requests.getHeaders());

    switch (response.statusCode) {
      case 200:
        return UserProfile.fromJson(json.decode(response.body)[0]);
      default:
        throw Exception(
            "Failed to fetch user current, server returned ${response.statusCode}");
    }
  }

  Future<UserProfile?> getUserProfile(int userId) async {
    var url = Uri.parse(getUserProfileUrl + userId.toString());
    var response = await http.get(url, headers: base.requests.getHeaders());

    switch (response.statusCode) {
      case 200:
        return UserProfile.fromJson(json.decode(response.body));
      case 404:
        return null;
      default:
        throw Exception(
            "Failed to fetch user current, server returned ${response.statusCode}");
    }
  }

  Future<User?> getUser(int userId) async {
    var url = Uri.parse(getUserUrl + userId.toString());
    var response = await http.get(url, headers: base.requests.getHeaders());

    switch (response.statusCode) {
      case 200:
        return User.fromJson(json.decode(response.body));
      case 404:
        return null;
      default:
        throw Exception(
            "Failed to fetch user $userId, server returned ${response.statusCode}");
    }
  }
}
