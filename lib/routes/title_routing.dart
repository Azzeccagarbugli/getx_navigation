import 'package:flutter/services.dart';

class TitlePage {
  static void update({required String title}) {
    SystemChrome.setApplicationSwitcherDescription(
        ApplicationSwitcherDescription(
      label: title,
      primaryColor: 0x0,
    ));
  }
}
