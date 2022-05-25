class Statistics {
  final String continent;
  final String country;
  final String population;
  final Cases cases;
  final Deaths deaths;
  final Tests tests;

  Statistics(
      {required this.continent,
      required this.country,
      required this.population,
      required this.cases,
      required this.deaths,
      required this.tests});

  factory Statistics.fromJson(dynamic json) {
    return Statistics(
      continent: json['continent'].toString(),
      country: json['country'].toString(),
      population: json['population'].toString(),
      cases: Cases.fromJson(json['cases']),
      deaths: Deaths.fromJson(json['deaths']),
      tests:  Tests.fromJson(json['tests']),
    );
  }

  static List<Statistics> valueFromSnapshot(List snapshot) {
    return snapshot.map((data) {
      return Statistics.fromJson(data);
    }).toList();
  }
}

class Cases {
  final String newcase;
  final String active;
  final String critical;
  final String recovered;
  final String total;

  Cases(
      {required this.newcase,
      required this.active,
      required this.critical,
      required this.recovered,
      required this.total});

  factory Cases.fromJson(dynamic json){
    return Cases(
      newcase: json['new'].toString(), 
      active: json['active'].toString(), 
      critical: json['critical'].toString(), 
      recovered: json['recovered'].toString(), 
      total: json['total'].toString(),
      );
  }
}

class Deaths {
  final String newdeaths;
  final String total;

  Deaths({required this.newdeaths, required this.total});

  factory Deaths.fromJson(dynamic json){
    return Deaths(
      newdeaths: json['newdeaths'].toString(),
      total: json['total'].toString());
  }
}

class Tests {
  final String total;
  Tests({required this.total});

  factory Tests.fromJson(dynamic json){
    return Tests(total: json['total'].toString());
  }
}
