import 'dart:ui';

import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/utils.dart';
import 'package:getxnavigation/theme/color_palette.dart';
import 'package:getxnavigation/theme/constants.dart';
import 'package:getxnavigation/widgets/app_bar/app_bar_icon.dart';
import 'package:getxnavigation/widgets/app_bar/bread_crumb_custom.dart';

class AppBarCustom extends StatelessWidget {
  const AppBarCustom({
    Key? key,
    bool showLogo = false,
  })  : _showLogo = showLogo,
        super(key: key);

  String get _greeting {
    final _hour = DateTime.now().hour;
    if (_hour < 12) {
      return 'Buongiorno';
    }
    if (_hour < 17) {
      return 'Buon pomeriggio';
    }
    return 'Buonasera';
  }

  final bool _showLogo;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(kSpaceS),
      width: context.width,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Visibility(
                visible: _showLogo,
                replacement: AppBarIcon(
                  onTap: () {},
                  child: const Icon(
                    Icons.help_outline_outlined,
                    color: kPrimaryColor,
                  ),
                ),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: const [
                    FlutterLogo(),
                    SizedBox(
                      width: kSpaceM,
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    AutoSizeText(
                      '$_greeting Francesco',
                      maxLines: 1,
                      overflow: TextOverflow.fade,
                      textAlign: TextAlign.center,
                      minFontSize: 14,
                      style: const TextStyle(
                        color: kPrimaryColor,
                        fontWeight: FontWeight.w800,
                        fontSize: 24,
                      ),
                    ),
                    AutoSizeText(
                      'GetX • Ultimo accesso: ${DateTime.now()}',
                      maxLines: 1,
                      overflow: TextOverflow.fade,
                      textAlign: TextAlign.center,
                      minFontSize: 10,
                      style: const TextStyle(
                        color: kBlue600,
                        fontWeight: FontWeight.w300,
                        fontSize: 16,
                      ),
                    ),
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  AppBarIcon(
                    onTap: () {},
                    child: const Icon(
                      Icons.settings_outlined,
                      color: kPrimaryColor,
                    ),
                  ),
                  SizedBox(
                    width: !context.isPhone ? kSpaceM : kSpaceXXS,
                  ),
                  Visibility(
                    visible: !context.isPhone,
                    child: AppBarIcon(
                      onTap: () {},
                      child: const Icon(
                        Icons.notifications_active_outlined,
                        color: kPrimaryColor,
                      ),
                    ),
                  ),
                  Container(
                    height: kSpaceXL,
                    margin: const EdgeInsets.symmetric(horizontal: kSpaceM),
                    width: kSpaceXXS,
                    decoration: BoxDecoration(
                      borderRadius: kBorderRadius,
                      color: kNeutralColor,
                    ),
                    child: const SizedBox(),
                  ),
                  AppBarIcon(
                    onTap: () {},
                    picProfile:
                        'https://i2.wp.com/www.empira.it/wp-content/uploads/2020/06/baby-yoda-65607.jpg?fit=1920%2C1080&ssl=1',
                    child: const SizedBox(),
                  ),
                ],
              ),
            ],
          ),
          const SizedBox(
            height: kSpaceM,
          ),
          if (context.isPhone)
            const Expanded(
              child: BreadCrumpCustom(),
            )
          else
            const BreadCrumpCustom(),
        ],
      ),
    );
  }
}
