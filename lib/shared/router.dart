import 'package:flutter/material.dart';
import 'package:fluttertravel/screens/destination.dart';
import 'package:fluttertravel/screens/home.dart';
class Router {

  static const INITIAL_ROUTE = HOME_ROUTE;

  static const HOME_ROUTE = '/';

  static const DESTINATION_ROUTE = '/destination';

  static Route<dynamic> routeGenerator(RouteSettings settings) {
    switch (settings.name) {

      case HOME_ROUTE:
        return MaterialPageRoute(
          builder: (context) => Home()
        );

      case DESTINATION_ROUTE:
        final _place = settings.arguments;
        return PageRouteBuilder(
          transitionDuration: Duration(milliseconds: 500),
          pageBuilder: (
              BuildContext context,
              Animation<double> animation,
              Animation<double> secondaryAnimation) {
            return Destination(place: _place,);
          },
          transitionsBuilder: (
              BuildContext context,
              Animation<double> animation,
              Animation<double> secondaryAnimation,
              Widget child) {
            return Align(
              child: FadeTransition(
                opacity: animation,
                child: child,
              ),
            );
          },
        );
      default:
        return MaterialPageRoute(builder: (context) => Scaffold(
          body: Center(
            child: Text('ERROR ROUTING'),
          ),
        ));

    }
  }
}