



import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mywebsite_kandidat/routing/route_names.dart';
import 'package:mywebsite_kandidat/views/hannes_heatmap/Ebba_heatmap/Ebba_display.dart';
import 'package:mywebsite_kandidat/views/home/home_view.dart';
import '../views/Players/all_players/PLAYER_LAYOUT_TEST.dart';
import '../views/Players/players_view.dart';
import '../views/Players/stats_view.dart';
import '../views/about/about_view.dart';
import '../views/episodes/episodes_view.dart';
import '../views/login_signup/login.dart';
import '../views/sign_up/sign_up.dart';
import '../views/sign_up/sign_up_message_sent.dart';


Route<dynamic>? generateRoute(RouteSettings settings) {
  switch (settings.name) {
    case HomeRoute:
      return _getPageRoute(const HomeView(), settings);
    case EbbaRoute:
      return _getPageRoute(const EbbaView(), settings);
    case AboutRoute:
      return _getPageRoute(const AboutView(), settings);
    case EpisodesRoute:
      return _getPageRoute(const EpisodesView(), settings);
    case PlayersRoute:
      return _getPageRoute(const PlayersView(), settings);
    case StatsRoute:
      return _getPageRoute(const StatsView(), settings);
    case SignUpRoute:
      return _getPageRoute(const SignUpView(), settings);
    case SignUpMessageRoute:
      return _getPageRoute(const SignUpMessageView(), settings);
    case LoginRoute:
      return _getPageRoute(const LoginView(), settings);



    default:
      return _getPageRoute(const HomeView(), settings);
  }
  return null;
}

PageRoute _getPageRoute(Widget child, RouteSettings settings) {
  return _FadeRoute(child: child, routeName: settings.name as String);
}

class _FadeRoute extends PageRouteBuilder {
  final Widget child;
  final String routeName;

  _FadeRoute({required this.child, required this.routeName}) :
        super (
        settings: RouteSettings(name: routeName),
          pageBuilder: (
              BuildContext context,
              Animation<double> animation,
              Animation<double> secondaryAnimation,
              ) => child,

          transitionsBuilder: (
              BuildContext context,
              Animation<double> animation,
              Animation<double> secondaryAnimation,
              Widget child,
              ) =>
              FadeTransition(
                opacity: animation,
                child: child,
              )
      );
}

