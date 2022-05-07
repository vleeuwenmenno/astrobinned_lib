import 'package:astrobinned_lib/src/models/user_permissions.dart';

class Groups {
  int? id;
  String? name;
  List<UserPermissions>? permissions;

  Groups({this.id, this.name, this.permissions});

  Groups.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    if (json['permissions'] != null) {
      permissions = <UserPermissions>[];
      json['permissions'].forEach((v) {
        permissions!.add(UserPermissions.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['name'] = name;
    if (permissions != null) {
      data['permissions'] = permissions!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}
