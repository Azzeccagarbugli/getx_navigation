import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'app_pages.dart';

class NavigatorContent extends StatelessWidget {
  const NavigatorContent({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetRouterOutlet(
      initialRoute: Routes.entry,
    );
  }
}
