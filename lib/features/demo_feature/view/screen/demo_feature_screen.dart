import 'package:flutter/material.dart';
import 'package:flutter_project_template_arch/widgets/atom/text/text_base.dart';

class DemoFeatureScreen extends StatefulWidget {
  const DemoFeatureScreen({super.key});

  @override
  State<DemoFeatureScreen> createState() => _DemoFeatureScreenState();
}

class _DemoFeatureScreenState extends State<DemoFeatureScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const TextBase(label: 'Demo Feature',),
      ),
      body: const Center(
        child: TextBase(label: 'This is demo',),
      ),
    );
  }
}