import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_navigation/src/nav2/router_outlet.dart';
import 'package:get/get_navigation/src/routes/get_route.dart';
import 'package:getxnavigation/bindings/navigation_binding.dart';
import 'package:getxnavigation/main.dart';
import 'package:getxnavigation/pages/chambers_page.dart';
import 'package:getxnavigation/pages/connections_page.dart';
import 'package:getxnavigation/pages/notifications_page.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const initPage = _Paths.entry;

  static final routes = [
    GetPage(
      preventDuplicates: true,
      name: initPage,
      page: () => const MyAngelEvoUI(),
      middlewares: [
        RouterOutletContainerMiddleWare(initPage),
      ],
      binding: NavigationBinding(),
      children: [
        GetPage(
          name: _Paths.chambers,
          page: () => const FlutterLogo(),
          children: [
            GetPage(
              name: _Paths.chambersId,
              page: () => const FlutterLogo(),
            ),
          ],
        ),
        GetPage(
          name: _Paths.notifications,
          page: () => const FlutterLogo(),
        ),
        GetPage(
          name: _Paths.connections,
          page: () => const FlutterLogo(),
        ),
      ],
    ),
  ];
}
