import 'package:flutter_project_template_arch/features/demo_feature/view/demo_feature_view.dart';
import 'package:flutter_project_template_arch/navigation/path/navigation_path.dart';
import 'package:go_router/go_router.dart';

final router = GoRouter(
  routes: [
    GoRoute(
      path: NavigationPath.initialRoute,
      builder: (context, state) => DemoFeatureView(),
    ),
  ],
);