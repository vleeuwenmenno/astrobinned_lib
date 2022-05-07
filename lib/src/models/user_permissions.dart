class UserPermissions {
  int? id;
  String? name;
  String? codename;
  int? contentType;

  UserPermissions({this.id, this.name, this.codename, this.contentType});

  UserPermissions.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    codename = json['codename'];
    contentType = json['content_type'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['name'] = name;
    data['codename'] = codename;
    data['content_type'] = contentType;
    return data;
  }
}
