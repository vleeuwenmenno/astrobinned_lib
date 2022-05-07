class Notification {
  int? id;
  String? user;
  String? fromUser;
  String? subject;
  String? message;
  int? level;
  String? extraTags;
  String? created;
  String? modified;
  bool? read;
  dynamic expires;
  dynamic closeTimeout;

  Notification(
      {this.id,
      this.user,
      this.fromUser,
      this.subject,
      this.message,
      this.level,
      this.extraTags,
      this.created,
      this.modified,
      this.read,
      this.expires,
      this.closeTimeout});

  Notification.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    user = json['user'];
    fromUser = json['fromUser'];
    subject = json['subject'];
    message = json['message'];
    level = json['level'];
    extraTags = json['extraTags'];
    created = json['created'];
    modified = json['modified'];
    read = json['read'];
    expires = json['expires'];
    closeTimeout = json['closeTimeout'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['user'] = user;
    data['fromUser'] = fromUser;
    data['subject'] = subject;
    data['message'] = message;
    data['level'] = level;
    data['extraTags'] = extraTags;
    data['created'] = created;
    data['modified'] = modified;
    data['read'] = read;
    data['expires'] = expires;
    data['closeTimeout'] = closeTimeout;
    return data;
  }
}
