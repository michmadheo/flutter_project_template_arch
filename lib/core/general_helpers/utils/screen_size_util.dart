import 'package:flutter/widgets.dart';
import 'package:flutter_project_template_arch/core/config/config.dart';

class ScreenSizeUtil {
  ScreenSizeUtil._();

  static double _screenWidth = 0.0;
  static double _screenHeight = 0.0;
  static double _statusBarHeight = 0.0;
  static double _bottomBarHeight = 0.0;
  static bool _isTablet = false;

  static void initializeScreenSize(BuildContext context) {
    _screenWidth = MediaQuery.of(context).size.width;
    _screenHeight = MediaQuery.of(context).size.height;
    _statusBarHeight = MediaQuery.of(context).viewPadding.top;
    _bottomBarHeight = MediaQuery.of(context).viewPadding.bottom;
    _isTablet = MediaQuery.of(context).size.width >= Config.tabletScreenWidth;
    if (_isTablet) {
      Config.defaultScreenWidth = Config.tabletScreenWidth;
      Config.defaultScreenHeight = Config.tabletScreenHeight;
    }
  }

  static double getScreenWidth() {
    return _screenWidth;
  }

  static double getScreenHeight() {
    return _screenHeight;
  }

  static double getStatusBarHeight() {
    return _statusBarHeight;
  }

  static double getBottomBarHeight() {
    return _bottomBarHeight;
  }

  static bool isTablet() {
    return _isTablet;
  }
}
