import 'package:weather_app/features/city/city.dart';
import 'package:weather_app/features/city_list/city_list.dart';

final routes = {
  '/': (context) => const CityListScreen(),
  '/city': (context) => const CityScreen(),
};
