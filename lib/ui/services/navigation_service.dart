import 'package:flutter/material.dart';

class NavigationService {
  final GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();

  Future navigateTo(String routeName) =>
      navigatorKey.currentState!.pushNamed(routeName);

  void goBack(String routeName) => navigatorKey.currentState!.pop();
}
