import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:getxnavigation/models/drawer_list_label.dart';
import 'package:getxnavigation/theme/color_palette.dart';
import 'package:getxnavigation/theme/constants.dart';

class DrawerButton extends StatelessWidget {
  const DrawerButton({
    Key? key,
    required bool isSelected,
    required Function() onTap,
    required this.drw,
  })  : _isSelected = isSelected,
        _onTap = onTap,
        super(key: key);

  final bool _isSelected;
  final DrawerListLabel drw;
  final Function() _onTap;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(
        horizontal: kSpaceS,
        vertical: kSpaceXS,
      ),
      decoration: BoxDecoration(
        gradient: _isSelected ? kLinearGradientColor : null,
        borderRadius: kBorderRadius,
      ),
      child: ListTile(
        enableFeedback: true,
        contentPadding: const EdgeInsets.symmetric(
          vertical: kSpaceXS,
          horizontal: kSpaceL,
        ),
        shape: RoundedRectangleBorder(borderRadius: kBorderRadius),
        onTap: !_isSelected ? _onTap : null,
        dense: true,
        title: AutoSizeText(
          drw.title.toUpperCase(),
          style: TextStyle(
            color: _isSelected ? kWhiteColor : kPrimaryColor,
            fontWeight: FontWeight.w700,
            fontSize: 18,
          ),
        ),
        subtitle: Padding(
          padding: const EdgeInsets.only(top: kSpaceXXS),
          child: AutoSizeText(
            drw.subtitle,
            style: TextStyle(
              color: _isSelected ? kWhiteColor : kPrimaryColor,
            ),
          ),
        ),
        leading: Icon(
          drw.iconData,
          color: _isSelected ? kWhiteColor : kPrimaryColor,
        ),
      ),
    );
  }
}
