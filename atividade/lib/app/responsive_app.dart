import 'package:flutter/material.dart';
import '../pages/responsive_home_page.dart';

class ResponsiveApp extends StatelessWidget {
  const ResponsiveApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Painel de Eventos Acadêmicos',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color.fromARGB(255, 178, 56, 234),
          brightness: Brightness.light,
        ),
        useMaterial3: true,
        scaffoldBackgroundColor: const Color(0xFFF0E6F6),
      ),
      home: const ResponsiveHomePage(),
    );
  }
}