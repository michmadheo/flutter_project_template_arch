import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'demo_feature_state.dart';

class DemoFeatureCubit extends Cubit<DemoFeatureState> {
  DemoFeatureCubit() : super(DemoFeatureInitial());
}
