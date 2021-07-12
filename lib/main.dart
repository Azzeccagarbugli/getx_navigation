import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/utils.dart';
import 'package:getxnavigation/responsive/desktop_app.dart';
import 'package:getxnavigation/responsive/mobile_app.dart';
import 'package:getxnavigation/responsive/tablet_app.dart';
import 'package:getxnavigation/routes/app_pages.dart';
import 'package:getxnavigation/theme/myangelevo_theme.dart';

import 'package:url_strategy/url_strategy.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  setPathUrlStrategy();

  runApp(
    GetMaterialApp.router(
      getPages: AppPages.routes,
      theme: MyAngelEvoTheme.theme,
      routeInformationParser: GetInformationParser(),
      routerDelegate: GetDelegate(
        preventDuplicateHandlingMode:
            PreventDuplicateHandlingMode.PopUntilOriginalRoute,
      ),
    ),
  );
}

class MyAngelEvoUI extends StatelessWidget {
  const MyAngelEvoUI({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final appBuilder = context.responsiveValue<Widget Function()>(
      desktop: () => const DesktopApp(),
      tablet: () => const TabletApp(),
      mobile: () => const MobileApp(),
    );

    return appBuilder!();
  }
}
