import 'package:flutter/material.dart';
import 'package:flutter_project_template_arch/core/config/env/env.dart';

class Config {
  const Config._();

  // Navigator Key
  static GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();

  // General
  static String appName = Env.demo;
}