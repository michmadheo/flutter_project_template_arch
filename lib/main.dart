import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_project_template_arch/core/dependencies/injection.dart';
import 'package:flutter_project_template_arch/core/services/api_fetch/api_fetch.dart';
import 'package:flutter_project_template_arch/core/general_helpers/utils/screen_size_util.dart';
import 'package:flutter_project_template_arch/navigation/router.dart';
import 'package:flutter_project_template_arch/themes/system_mode/system_mode.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  /// Initialize Device Orientation
  await SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);

  /// Initialize Dependency Injection
  Injection().initializeDependencyInjection();

  /// Initialize Dio
  getIt<ApiFetch>().initializeDio();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    /// Initialize dynamic screen size
    ScreenSizeUtil.initializeScreenSize(context);

    return MaterialApp.router(
      themeMode: ThemeSystemMode
          .system, // Change to ThemeSystemMode.light or ThemeSystemMode.dark to lock specific modes
      theme: ThemeSystemMode.lightConfig,
      darkTheme: ThemeSystemMode.darkConfig,
      routerConfig: router,
    );
  }
}
