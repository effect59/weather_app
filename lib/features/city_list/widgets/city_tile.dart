import 'package:flutter/material.dart';

class CityTile extends StatelessWidget {
  const CityTile({
    super.key,
    required this.cityName,
    required this.temp,
  });

  final String cityName;
  final double temp;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            'Perm',
            style: Theme.of(context).textTheme.bodyMedium,
          ),
          Text(
            '$temp °C',
            style: Theme.of(context).textTheme.bodyMedium,
          ),
        ],
      ),
      trailing: const Icon(Icons.arrow_forward_ios),
      onTap: () {
        Navigator.of(context).pushNamed(
          '/city',
          arguments: cityName,
        );
      },
    );
  }
}
