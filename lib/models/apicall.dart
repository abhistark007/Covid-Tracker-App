// ignore_for_file: unused_import, avoid_print, unused_local_variable

import 'dart:convert';

import 'package:covid_app/models/get_statistics.dart';
import 'package:http/http.dart' as http;
import 'get_country.dart';

class ApiCalls {

  // to get country data
  static Future<List<dynamic>> getCountry() async {
    var uri = Uri.https(
      "covid-193.p.rapidapi.com",
      "/countries",
    );

    final response = await http.get(uri, headers: {
      'X-RapidAPI-Key': 'e0bdefd8acmsh5fe9b403c8f588ep14d5c3jsnb547865f5b62',
      'X-RapidAPI-Host': 'covid-193.p.rapidapi.com',
    });

    Map data = jsonDecode(response.body);
    List temp = [];

    for (var i in data['response']) {
      temp.add(i);
    }

    return temp;
  }

  // to get statistics data
  static Future<List<Statistics>> getStatistics() async {
    var uri = Uri.https("covid-193.p.rapidapi.com", "/statistics");
    final response = await http.get(uri, headers: {
      'X-RapidAPI-Key': 'e0bdefd8acmsh5fe9b403c8f588ep14d5c3jsnb547865f5b62',
      'X-RapidAPI-Host': 'covid-193.p.rapidapi.com',
    });

    Map data=jsonDecode(response.body);
    List temp=[];
    for(var i in data['response']){
      print(i);
      temp.add(i);
    }

    return Statistics.valueFromSnapshot(temp);
  }

  
}
