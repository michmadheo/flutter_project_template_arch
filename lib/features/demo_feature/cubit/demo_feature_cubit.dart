import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_project_template_arch/core/common/view_state/view_state.dart';

part 'demo_feature_state.dart';

class DemoFeatureCubit extends Cubit<DemoFeatureState> {
  DemoFeatureCubit() : super(DemoFeatureState.initial());

  void demoCubitFunction() {
    emit(state.copyWith(demoState: ViewState.loading));

    Future.delayed(const Duration(seconds: 2), () {
      emit(state.copyWith(demoState: ViewState.success));
    });
  }
}
