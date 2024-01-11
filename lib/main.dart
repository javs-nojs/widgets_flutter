import 'package:flutter/material.dart';
import 'package:widgets_flutter/widgets/material_banner.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: ThemeData.light().colorScheme.inversePrimary,
          leading: const Icon(Icons.ac_unit_sharp),
          title: const Text('Widget Maps'),
        ),
        body: const MaterialBannerExample(),
      ),
    );
  }
}
