import 'package:flutter/material.dart';
import 'router/router.dart';
import 'theme/theme.dart';

class WeatherApp extends StatelessWidget {
  const WeatherApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: theme,
      title: 'Прогноз погоды',
      routes: routes,
    );
  }
}
