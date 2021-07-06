import 'package:flutter/material.dart';
import 'package:getxnavigation/theme/constants.dart';

import 'color_palette.dart';

class MyAngelEvoTheme {
  static ThemeData theme(BuildContext context) {
    return ThemeData(
      fontFamily: kFontFamilyName,
      textSelectionTheme: const TextSelectionThemeData(
        selectionColor: kNeutralColor,
        selectionHandleColor: kPrimaryColor,
      ),
      bottomAppBarTheme: const BottomAppBarTheme(
        elevation: 2.0,
      ),
    );
  }
}
