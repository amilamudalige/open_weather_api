import 'package:flutter/material.dart';
import 'package:openweather/services/api_services.dart';

// ignore: must_be_immutable
class WeatherDetails extends StatelessWidget {
  WeatherDetails({super.key, required this.locationName});
  String locationName;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FutureBuilder(
        future: ApiServices().getWeatherDatailsByLocationName(locationName),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.done) {
            if (snapshot.hasData) {
              return Center(
                child: Column(
                  children: [
                    Text(snapshot.data!.location.toString()),
                    Text(snapshot.data!.temperature.toString()),
                    Text(snapshot.data!.windSpeed.toString()),
                  ],
                ),
              );
            } else {
              return const Center(
                child: Text("Not Found Data"),
              );
            }
          } else if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(
              child: Column(
                children: [
                  LinearProgressIndicator(
                    color: Colors.black,
                  )
                ],
              ),
            );
          }
          {
            return const Center(
              child: Column(
                children: [Text("No Data found")],
              ),
            );
          }
        },
      ),
    );
  }
}
