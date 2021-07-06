part of 'app_pages.dart';

abstract class Routes {
  Routes._();

  static const entry = _Paths.entry;
  static const chambers = _Paths.chambers;
  static const notifications = _Paths.notifications;
  static const connections = _Paths.connections;

  static String chambersId({required String id}) => '$chambers/$id';
}

abstract class _Paths {
  // Entry
  static const entry = '/';

  // Chambers
  static const chambers = '/chambers';
  static const chambersId = '/:id';

  // Notifications
  static const notifications = '/notifications';

  // Connections
  static const connections = '/connections';
}
