import 'package:flutter/material.dart';

class NavigationService {
  static GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();
}

final BuildContext globalContext =
    NavigationService.navigatorKey.currentState!.context;
