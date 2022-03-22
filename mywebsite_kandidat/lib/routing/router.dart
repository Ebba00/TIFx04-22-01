



import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mywebsite_kandidat/routing/route_names.dart';
import 'package:mywebsite_kandidat/views/home/home_view.dart';
import '../views/about/about_view.dart';
import '../views/episodes/episodes_view.dart';
import '../views/login/log_in_view.dart';

Route<dynamic>? generateRoute(RouteSettings settings) {
  switch (settings.name) {
    case HomeRoute:
      return _getPageRoute(const HomeView());
    case AboutRoute:
      return _getPageRoute(const AboutView());
    case EpisodesRoute:
      return _getPageRoute(const EpisodesView());
    case LogInRoute:
      return _getPageRoute(const LogInView());
    default:
  }
  return null;
}

PageRoute _getPageRoute(Widget child) {
  return _FadeRoute(child: child);
}

class _FadeRoute extends PageRouteBuilder {
  final Widget child;

  _FadeRoute({required this.child}) :
        super (
          pageBuilder: (BuildContext context,
              Animation<double> animation,
              Animation<double> secondaryAnimation,) => child,

          transitionsBuilder: (BuildContext context,
              Animation<double> animation,
              Animation<double> secondaryAnimation,
              Widget child,) =>
              FadeTransition(opacity: animation, child: child,)
      );
}

