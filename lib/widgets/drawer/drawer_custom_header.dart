import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get/utils.dart';

const double _kDrawerHeaderHeight = 160.0 + 1.0;

class DrawerCustomHeader extends StatelessWidget {
  const DrawerCustomHeader({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.maxFinite,
      height: context.mediaQueryPadding.top + _kDrawerHeaderHeight,
      child: const Center(child: FlutterLogo()),
    );
  }
}
