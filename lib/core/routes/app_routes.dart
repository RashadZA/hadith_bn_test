part of 'app_pages.dart';

abstract class Routes {
  Routes._();
  static const unknown404 = _Paths.unknown404;
  static const main = _Paths.main;
  static const home = main + _Paths.home;
  static const chapter = home + _Paths.chapter;
}

abstract class _Paths {
  static const unknown404 = '/404';
  static const main = '/main';
  static const home = '$main/home';
  static const chapter = '/chapter';
}
