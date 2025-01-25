import 'package:flutter/material.dart';
import 'package:route_camp/core/routes_name.dart';
import 'package:route_camp/home/home_view.dart';
import 'package:route_camp/splash/splash_view.dart';

class RouteGenerator {
  static Route<dynamic>? onGenerator(RouteSettings settings) {
    switch (settings.name) {
      case RoutesName.initial:
        return MaterialPageRoute(
            builder: (context) => SplashView(), settings: settings);

      case RoutesName.homeView:
        return MaterialPageRoute(
            builder: (context) => HomeView(), settings: settings);

      default:
        return MaterialPageRoute(
          builder: (context) => SplashView(),
        );
    }
  }
}
