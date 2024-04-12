import 'package:flutter/material.dart';
import 'package:weather_app/features/city_list/widgets/widgets.dart';
import 'package:weather_app/repositories/weather/models/weather.dart';
import 'package:weather_app/repositories/weather/weather_repository.dart';
//import 'package:weather_app/features/city_list/city_list.dart';
//import 'package:weather_app/pages/city.dart';
//import 'package:weather_app/widgets/weather_main.dart';

class CityListScreen extends StatefulWidget {
  const CityListScreen({super.key});

  @override
  State<CityListScreen> createState() => _CityListScreenState();
}

class _CityListScreenState extends State<CityListScreen> {
  Weather? _weatherList;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Прогноз погоды'),
      ),
      body: (_weatherList == null)
          ? const SizedBox()
          : ListView.separated(
              separatorBuilder: (context, index) => Divider(),
              itemCount: 1,
              itemBuilder: (context, i) {
                final cityName = _weatherList!.currentTime;
                final temp = _weatherList!.currentTemp;
                return CityTile(cityName: cityName, temp: temp);
              },
            ),
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          _weatherList = await WeatherRepository().getWeatherList();
          setState(() {});
        },
        child: const Icon(Icons.download),
      ),
    );
  }
}
