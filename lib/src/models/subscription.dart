class Subscription {
  int? id;
  bool? valid;
  String? expires;
  bool? active;
  bool? cancelled;
  int? user;
  int? subscription;

  Subscription({id, valid, expires, active, cancelled, user, subscription});

  Subscription.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    valid = json['valid'];
    expires = json['expires'];
    active = json['active'];
    cancelled = json['cancelled'];
    user = json['user'];
    subscription = json['subscription'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['valid'] = valid;
    data['expires'] = expires;
    data['active'] = active;
    data['cancelled'] = cancelled;
    data['user'] = user;
    data['subscription'] = subscription;
    return data;
  }
}
