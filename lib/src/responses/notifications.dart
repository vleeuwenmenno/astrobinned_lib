import 'package:astrobinned_lib/src/models/notification.dart';

class NotificationsResponse {
  int? count;
  int? next;
  int? previous;
  List<Notification>? results;

  NotificationsResponse({this.count, this.next, this.previous, this.results});

  NotificationsResponse.fromJson(Map<String, dynamic> json) {
    count = json['count'];
    next = json['next'];
    previous = json['previous'];

    results = [];
    for (var value in json['results']) {
      results?.add(Notification.fromJson(value));
    }
  }
}
