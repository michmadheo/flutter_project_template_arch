part of 'demo_feature_cubit.dart';

final class DemoFeatureState extends Equatable {
  final ViewState demoState;

  const DemoFeatureState({required this.demoState});

  factory DemoFeatureState.initial() =>
      DemoFeatureState(demoState: ViewState.initial);

  DemoFeatureState copyWith({ViewState? demoState}) =>
      DemoFeatureState(demoState: demoState ?? this.demoState);

  @override
  List<Object?> get props => [demoState];
}