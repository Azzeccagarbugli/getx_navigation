import 'package:getxnavigation/routes/app_pages.dart';
import 'package:getxnavigation/theme/constants.dart';

enum DrawerLabel {
  chambers,
  notifications,
  connections,
  users,
  system,
  home,
  chamberData,
}

DrawerLabel pathToDrawerLabel({required String path}) {
  return _mapDrawerLabelPath.keys.firstWhere(
    (p) => p.page == path,
    orElse: () => DrawerLabel.home,
  );
}

final Map<DrawerLabel, String> _mapDrawerLabelPath = {
  DrawerLabel.chambers: Routes.chambers,
  DrawerLabel.chamberData: Routes.chambersId(id: 'any'),
  DrawerLabel.notifications: Routes.notifications,
  DrawerLabel.connections: Routes.connections,
};

extension DrawerLabelExtension on DrawerLabel {
  String get page {
    switch (this) {
      case DrawerLabel.chambers:
        return Routes.chambers;
      case DrawerLabel.chamberData:
        return Routes.chambersId(id: 'any');
      case DrawerLabel.notifications:
        return Routes.notifications;
      case DrawerLabel.connections:
        return Routes.connections;
      case DrawerLabel.users:
        return '/users';
      case DrawerLabel.system:
        return '/system';
      case DrawerLabel.home:
        return '/';
      default:
        return '/';
    }
  }

  String get title {
    String _title = '$kProjectName • ';

    switch (this) {
      case DrawerLabel.chambers:
        _title += 'Chambers';
        break;
      case DrawerLabel.chamberData:
        _title += 'Chambers data';
        break;
      case DrawerLabel.notifications:
        _title += 'Notifications';
        break;
      case DrawerLabel.connections:
        _title += 'Connections';
        break;
      case DrawerLabel.users:
        _title += 'Users';
        break;
      case DrawerLabel.system:
        _title += 'Systems';
        break;
      case DrawerLabel.home:
        _title += 'Home';
        break;
      default:
        _title += 'Home';
        break;
    }
    return _title;
  }
}
