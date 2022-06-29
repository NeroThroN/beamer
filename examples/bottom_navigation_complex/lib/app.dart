import 'package:bottom_navigation_complex/routers/app.router.dart';
import 'package:flutter/material.dart';
import 'package:beamer/beamer.dart';

class App extends StatelessWidget {
  static BeamerDelegate router = routerDelegate;

  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      routerDelegate: router,
      routeInformationParser: BeamerParser(),
      backButtonDispatcher: BeamerBackButtonDispatcher(delegate: router, alwaysBeamBack: true),
    );
  }
}