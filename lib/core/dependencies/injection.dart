import 'package:flutter_project_template_arch/core/data/remote/demo_data/demo_data.dart';
import 'package:flutter_project_template_arch/core/services/api_fetch/api_fetch.dart';
import 'package:flutter_project_template_arch/features/demo_feature/repository/demo_feature_repository.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;

class Injection {
  void initializeDependencyInjection() {
    /// Service
    getIt.registerLazySingleton<ApiFetch>(() => ApiFetch());

    /// Remote Data
    getIt.registerLazySingleton<DemoData>(
      () => DemoData(apiFetch: getIt<ApiFetch>()),
    );

    /// Local Data

    /// Repository
    getIt.registerLazySingleton<DemoFeatureRepository>(
      () => DemoFeatureRepository(demoData: getIt<DemoData>()),
    );
  }
}
