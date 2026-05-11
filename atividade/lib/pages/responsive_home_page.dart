import 'package:flutter/material.dart';
import '../layouts/vertical_layout_example.dart';
import '../layouts/horizontal_layout_example.dart';

class ResponsiveHomePage extends StatelessWidget {
  const ResponsiveHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Painel de Eventos Acadêmicos'),
        elevation: 2,
      ),
      body: LayoutBuilder(
        builder: (context, constraints) {
          final useVerticalLayout = constraints.maxWidth < 800;

          if (useVerticalLayout) {
            return const VerticalLayoutExample();
          }
          return const HorizontalLayoutExample();
        },
      ),
    );
  }
}