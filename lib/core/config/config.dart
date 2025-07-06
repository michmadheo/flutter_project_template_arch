import 'package:flutter/material.dart';
import 'package:flutter_project_template_arch/core/config/env/env.dart';

class Config {
  const Config._();

  // Screen dimensions imitations (Add more if needed)
  static double phoneScreenWidth = 360.0;
  static double phoneScreenHeight = 640.0;
  static double tabletScreenWidth = 600.0;
  static double tabletScreenHeight = 1000.0;

  // Default screen dimensions
  static double defaultScreenWidth = phoneScreenWidth;
  static double defaultScreenHeight = phoneScreenHeight;

  // Navigator Key
  static GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();

  // General
  static String appName = Env.demo;
}