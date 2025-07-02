import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_project_template_arch/core/common/view_state/view_state.dart';
import 'package:flutter_project_template_arch/features/demo_feature/cubit/demo_feature_cubit.dart';
import 'package:flutter_project_template_arch/widgets/atom/text/text_base.dart';

// Screen
part 'screen/demo_feature_screen.dart';

class DemoFeatureView extends StatelessWidget {
  const DemoFeatureView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => DemoFeatureCubit()..demoCubitFunction(),
      child: DemoFeatureScreen(),
    );
  }
}
