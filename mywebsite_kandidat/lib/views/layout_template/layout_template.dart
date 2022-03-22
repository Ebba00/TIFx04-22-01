import 'package:flutter/material.dart';
import 'package:mywebsite_kandidat/routing/route_names.dart';
import 'package:mywebsite_kandidat/routing/router.dart';
import 'package:mywebsite_kandidat/services/navigation_service.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:mywebsite_kandidat/widgets/navigation_bar/navigation_bar.dart' as auth;
import '../../locator.dart';
import '../../widgets/centered_view/centered_view.dart';
import '../../widgets/navigation_drawer/navigation_drawer.dart';

class LayoutTemplate extends StatelessWidget {
  const LayoutTemplate({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(
      builder: (context, sizingInformation) => Scaffold(
        drawer: sizingInformation.deviceScreenType == DeviceScreenType.mobile
            ? const NavigationDrawer()
            : null,
        backgroundColor: Colors.white,
        body: CenteredView(
          child: Column(children: <Widget>[
            const auth.NavigationBar(),
            Expanded(
              child: Navigator(
                key: locator<NavigationService>().navigatorKey,
                onGenerateRoute: generateRoute,
                initialRoute: HomeRoute,
              ),
            ),
          ],
          ),
        ),
      ),
    );
  }
}