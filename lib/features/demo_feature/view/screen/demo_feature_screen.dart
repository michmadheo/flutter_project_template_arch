part of '../demo_feature_view.dart';

class DemoFeatureScreen extends StatefulWidget {
  const DemoFeatureScreen({super.key});

  @override
  State<DemoFeatureScreen> createState() => _DemoFeatureScreenState();
}

class _DemoFeatureScreenState extends State<DemoFeatureScreen> {
  @override
  Widget build(BuildContext context) {
    return BlocListener<DemoFeatureCubit, DemoFeatureState>(
      listener: (context, state) {
        if (state.demoState == ViewState.loading) {
          // Loading Action
        } else if (state.demoState == ViewState.success) {
          // Success Action
        }
      },
      child: Scaffold(
        appBar: AppBar(title: const TextBase(label: 'Demo Feature')),
        body: Center(
          child: BlocSelector<DemoFeatureCubit, DemoFeatureState, ViewState>(
            selector: (state) {
              return state.demoState;
            },
            builder: (context, state) {
              if(state == ViewState.loading) {
                return TextBase(label: 'loading demo data...');
              }
              else if(state == ViewState.success) {
                return TextBase(label: 'Demo data loaded successfully!');
              }
              else {
                return TextBase(label: 'Error loading demo data.');
              }
            },
          ),
        ),
      ),
    );
  }
}
