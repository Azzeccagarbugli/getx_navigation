import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_navigation/src/routes/get_route.dart';
import 'package:getxnavigation/bindings/navigation_binding.dart';
import 'package:getxnavigation/main.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const initPage = _Paths.entry;

  static final routes = [
    GetPage(
      preventDuplicates: true,
      name: initPage,
      page: () => const MyAngelEvoUI(),
      participatesInRootNavigator: true,
      binding: NavigationBinding(),
      transition: Transition.noTransition,
      children: [
        GetPage(
          name: _Paths.chambers,
          page: () => const FlutterLogo(),
          transition: Transition.noTransition,
          children: [
            GetPage(
              name: _Paths.chambersId,
              page: () => const FlutterLogo(),
            ),
          ],
        ),
        GetPage(
          name: _Paths.notifications,
          transition: Transition.noTransition,
          page: () => const FlutterLogo(),
        ),
        GetPage(
          name: _Paths.connections,
          transition: Transition.noTransition,
          page: () => const FlutterLogo(),
        ),
      ],
    ),
  ];
}
