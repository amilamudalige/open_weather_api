class WeatherModel {
  String? location;
  double? temperature;
  String? windSpeed;
  WeatherModel({
    this.location,
    this.temperature,
    this.windSpeed,
  });
  factory WeatherModel.fromJeson(Map<String, dynamic> map) {
    return WeatherModel(
        location: map['name'],
        temperature: map['main']['temp'],
        windSpeed: map['wind']['speed'].toString());
  }
}
