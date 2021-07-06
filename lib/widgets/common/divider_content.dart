import 'package:flutter/material.dart';
import 'package:getxnavigation/theme/color_palette.dart';
import 'package:getxnavigation/theme/constants.dart';

class DividerContent extends StatelessWidget {
  const DividerContent({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: kDivider,
      decoration: const BoxDecoration(
        color: kNeutralColor,
      ),
    );
  }
}
