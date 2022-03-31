



import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mywebsite_kandidat/routing/route_names.dart';
import 'package:mywebsite_kandidat/views/HANNES_HEATMAP.dart';
import 'package:mywebsite_kandidat/views/home/home_view.dart';
import '../views/Players/players_view.dart';
import '../views/Players/stats_view.dart';
import '../views/about/about_view.dart';
import '../views/episodes/episodes_view.dart';
import '../views/login_signup/GAMMALLOGGAIN.dart';
import '../views/sign_up/sign_up.dart';


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
    case PlayersRoute:
      return _getPageRoute(const PlayersView());
    case StatsRoute:
      return _getPageRoute(const StatsView());
    case HannesHeatmapRoute:
      return _getPageRoute(HannesHeatmap());
    case SignUpRoute:
      return _getPageRoute(const SignUpView());

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

