class Locations {
  int? id;
  String? name;
  String? city;
  String? state;
  String? country;
  int? latDeg;
  int? latMin;
  int? latSec;
  String? latSide;
  int? lonDeg;
  int? lonMin;
  int? lonSec;
  String? lonSide;
  int? altitude;
  int? user;

  Locations(
      {id,
      name,
      city,
      state,
      country,
      latDeg,
      latMin,
      latSec,
      latSide,
      lonDeg,
      lonMin,
      lonSec,
      lonSide,
      altitude,
      user});

  Locations.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    city = json['city'];
    state = json['state'];
    country = json['country'];
    latDeg = json['lat_deg'];
    latMin = json['lat_min'];
    latSec = json['lat_sec'];
    latSide = json['lat_side'];
    lonDeg = json['lon_deg'];
    lonMin = json['lon_min'];
    lonSec = json['lon_sec'];
    lonSide = json['lon_side'];
    altitude = json['altitude'];
    user = json['user'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['name'] = name;
    data['city'] = city;
    data['state'] = state;
    data['country'] = country;
    data['lat_deg'] = latDeg;
    data['lat_min'] = latMin;
    data['lat_sec'] = latSec;
    data['lat_side'] = latSide;
    data['lon_deg'] = lonDeg;
    data['lon_min'] = lonMin;
    data['lon_sec'] = lonSec;
    data['lon_side'] = lonSide;
    data['altitude'] = altitude;
    data['user'] = user;
    return data;
  }
}
