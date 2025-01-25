import 'package:flutter/material.dart';
import 'package:route_camp/core/route_generator.dart';
import 'package:route_camp/core/routes_name.dart';

void main() {
  runApp(const Store());
}

class Store extends StatelessWidget {
  const Store({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Store',
      // theme: ThemeData(
      onGenerateRoute: RouteGenerator.onGenerator,
      initialRoute: RoutesName.initial,
    );
  }
}
