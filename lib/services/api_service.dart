import 'package:covid_by_country/models/country.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

Country _countryData(var countryJSON) {
  return Country((b) => b
    ..country = countryJSON['Country']
    ..totalConfirmed = countryJSON['Confirmed']
    ..totalDeaths = countryJSON['Deaths']);
}

class ApiService {
  Future<void> fetchData(String countryName) async {
    final response = await http.get('https://api.covid19api.com/country/$countryName');
    final json = jsonDecode(response.body).last;
    print(json);
    return _countryData(json);
  }
}
