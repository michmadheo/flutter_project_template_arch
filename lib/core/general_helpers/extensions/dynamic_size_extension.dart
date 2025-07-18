import 'package:flutter_project_template_arch/core/config/config.dart';
import 'package:flutter_project_template_arch/core/general_helpers/utils/screen_size_util.dart';

extension DynamicSizeX on num {
  double get ds {
    double width = ScreenSizeUtil.getScreenWidth();
    double scale = width / Config.defaultScreenWidth;
    return this * scale;
  }
}