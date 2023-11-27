import 'dart:convert';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:http/http.dart';
import 'package:openweather/models/weather_model.dart';

class ApiServices {
  String wethearDetails = 'https://api.openweathermap.org/data/2.5/weather?q=';
  String apiKey = '&APPID=fc3097bd7f36037e8ca95f660ec0f76b';

  Future<WeatherModel?> getWeatherDatailsByLocationName(
      String locationName) async {
    String endpoint = "$wethearDetails$locationName$apiKey";
    Response response = await get(Uri.parse(endpoint));
    if (response.statusCode == 200) {
      Map<String, dynamic> body = jsonDecode(response.body);
      WeatherModel weatherModel = WeatherModel.fromJeson(body);
      return weatherModel;
    } else {
      print(response.statusCode);
      return null;
    }
  }
}

final weatherProvider = Provider<ApiServices>((ref) => ApiServices());
