import 'package:flutter_test/flutter_test.dart';
import 'package:openweather/services/api_services.dart';

void main() {
  test('Fetch API', () async {
    bool done = false;
    var fetchData =
        await (ApiServices().getWeatherDatailsByLocationName("Galle"));
    if (fetchData != null) {
      done = true;
    }
    expect(done, true);
  });
}
