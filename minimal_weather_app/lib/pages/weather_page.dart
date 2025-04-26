import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

import '../service/weather_service.dart';
import '../models/weather_models.dart';

class WeatherPage extends StatefulWidget {
  const WeatherPage({super.key});

  @override
  State<WeatherPage> createState() => _WeatherPageState();
}

class _WeatherPageState extends State<WeatherPage> {
  final _weatherService = WeatherService("YOUR API KEY");
  Weather? _weather;

  void _fetchWeather() async {
    String cityName = await _weatherService.getCurrentCity();

    try {
      final weather = await _weatherService.getWeather(cityName);
      setState(() {
        _weather = weather;
      });
    } catch (e) {
      print(e);
    }
  }

  String getWeatherAnimation(String? mainCondition) {
    if (mainCondition == null) return 'assets/sunny.json';

    switch (mainCondition.toLowerCase()) {
      case 'clouds':
      case 'mist': 
      case 'smoke':
      case 'haze':
      case 'dust':
      case 'fog': 
        return 'assets/cloud.json';
      case 'rain':
      case 'drizzle':
      case 'shower rain': 
        return 'assets/rainy.json';
      case 'thunderstorm': 
        return 'assets/tunder.json';
      case 'clear': 
        return 'assets/sunny.json';
      default: 
        return 'assets/sunny.json';
    }
  }

  @override
  void initState() {
    super.initState();
    _fetchWeather();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      body:Center( 
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.location_on,
              color: Colors.grey,
              size: 32
            ),
            SizedBox(height: 10),
            Text(
              _weather?.cityName ?? "Loading City...",
              style: TextStyle(
                color: Colors.grey[700],
                fontWeight: FontWeight.bold,
                fontSize: 24,
              ),
            ),
            SizedBox(height: 120),
            Lottie.asset(
              getWeatherAnimation(_weather?.mainCondition),
            ),
            SizedBox(height: 120),
            Text(
              '${_weather?.temperature.round()}°',
              style: TextStyle(
                color: Colors.grey[700],
                fontWeight: FontWeight.bold,
                fontSize: 60,
              ),
            ),
          ],
        ),
      )
    );
  }
}