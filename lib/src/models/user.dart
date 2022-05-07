import 'package:astrobinned_lib/src/models/user_group.dart';
import 'package:astrobinned_lib/src/models/user_permissions.dart';

class User {
  int? id;
  String? avatar;
  int? userprofile;
  String? lastLogin;
  bool? isSuperuser;
  String? username;
  String? firstName;
  bool? isStaff;
  bool? isActive;
  String? dateJoined;
  List<Groups>? groups;
  List<UserPermissions>? userPermissions;

  User(
      {this.id,
      this.avatar,
      this.userprofile,
      this.lastLogin,
      this.isSuperuser,
      this.username,
      this.firstName,
      this.isStaff,
      this.isActive,
      this.dateJoined,
      this.groups,
      this.userPermissions});

  User.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    avatar = json['avatar'];
    userprofile = json['userprofile'];
    lastLogin = json['last_login'];
    isSuperuser = json['is_superuser'];
    username = json['username'];
    firstName = json['first_name'];
    isStaff = json['is_staff'];
    isActive = json['is_active'];
    dateJoined = json['date_joined'];
    if (json['groups'] != null) {
      groups = <Groups>[];
      json['groups'].forEach((v) {
        groups!.add(Groups.fromJson(v));
      });
    }
    if (json['user_permissions'] != null) {
      userPermissions = <UserPermissions>[];
      json['user_permissions'].forEach((v) {
        userPermissions!.add(new UserPermissions.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['avatar'] = avatar;
    data['userprofile'] = userprofile;
    data['last_login'] = lastLogin;
    data['is_superuser'] = isSuperuser;
    data['username'] = username;
    data['first_name'] = firstName;
    data['is_staff'] = isStaff;
    data['is_active'] = isActive;
    data['date_joined'] = dateJoined;
    if (groups != null) {
      data['groups'] = groups!.map((v) => v.toJson()).toList();
    }
    if (userPermissions != null) {
      data['user_permissions'] =
          userPermissions!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}
