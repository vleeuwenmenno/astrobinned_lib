class SubscriptionType {
  int? id;
  String? name;
  String? description;
  String? price;
  String? currency;
  int? trialPeriod;
  String? trialUnit;
  int? recurrencePeriod;
  String? recurrenceUnit;
  String? category;
  SubscriptionGroup? group;

  SubscriptionType(
      {id,
      name,
      description,
      price,
      currency,
      trialPeriod,
      trialUnit,
      recurrencePeriod,
      recurrenceUnit,
      category,
      group});

  SubscriptionType.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    description = json['description'];
    price = json['price'];
    currency = json['currency'];
    trialPeriod = json['trial_period'];
    trialUnit = json['trial_unit'];
    recurrencePeriod = json['recurrence_period'];
    recurrenceUnit = json['recurrence_unit'];
    category = json['category'];
    group = json['group'] != null
        ? SubscriptionGroup.fromJson(json['group'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['name'] = name;
    data['description'] = description;
    data['price'] = price;
    data['currency'] = currency;
    data['trial_period'] = trialPeriod;
    data['trial_unit'] = trialUnit;
    data['recurrence_period'] = recurrencePeriod;
    data['recurrence_unit'] = recurrenceUnit;
    data['category'] = category;
    if (group != null) {
      data['group'] = group!.toJson();
    }
    return data;
  }
}

class SubscriptionGroup {
  int? id;
  String? name;

  SubscriptionGroup({id, name});

  SubscriptionGroup.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = id;
    data['name'] = name;
    return data;
  }
}
