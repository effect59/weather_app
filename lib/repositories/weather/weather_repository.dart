import 'package:dio/dio.dart';
import 'package:weather_app/repositories/weather/models/weather.dart';
//import 'package:flutter/material.dart';
//import 'package:weather_app/repositories/weather/models/weather.dart';

class WeatherRepository {
  Future<Weather> getWeatherList() async {
    final response = await Dio().get(
        'https://api.open-meteo.com/v1/forecast?latitude=58.0105&longitude=56.2502&current=temperature_2m,relative_humidity_2m,apparent_temperature,precipitation,rain,showers,snowfall,wind_speed_10m,wind_direction_10m&daily=temperature_2m_max,temperature_2m_min,sunrise,sunset,daylight_duration&timezone=auto&forecast_days=1');
    final data = response.data;
    final current = data['current'];
    // final daily = data['daily'];
    // final weatherList = data.entries
    //     .map((e) => Weather(
    //           currentTime: e.latitude,
    //           currentTemp: e.temperature_2m,
    //           currentHum: e.relative_humidity_2m,
    //           currentApparentTemp: e.apparent_temperature,
    //           currentWindSpeed: e.wind_speed_10m,
    //           currentWindDirection: e.wind_direction_10m,
    //           // maxTemp,
    //           // minTemp,
    //           // sunrise,
    //           // sunset
    //         ))
    //     .toList();
    final weatherList = Weather(
      currentTime: current['time'],
      currentTemp: current['temperature_2m'],
      currentHum: current['relative_humidity_2m'],
      currentApparentTemp: current['apparent_temperature'],
      currentWindSpeed: current['wind_speed_10m'],
      currentWindDirection: current['wind_direction_10m'],
      //  maxTemp: daily['temperature_2m_max'],
      //  minTemp: daily['temperature_2m_min'],
      //  sunrise: daily['sunrise'],
      //   sunset: daily['sunset'],
    );
    return weatherList;
  }
}
