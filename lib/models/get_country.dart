class Country{
  Map<dynamic,dynamic> response;
  Country({required this.response});

  factory Country.fromJson(dynamic json){
    return Country(response: json['response']);
  }

  static List<Country> valueFromSnapshot(List snapshot){
    return snapshot.map((data) {
      return Country.fromJson(data);
    }).toList();
  }

}