import 'package:flutter/material.dart';

class MaterialBannerExample extends StatelessWidget {
  const MaterialBannerExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: ThemeData.light().colorScheme.inversePrimary,
        leading: const Icon(Icons.ac_unit_rounded),
        title: const Text('Material Banner'),
      ),
      body: Center(
        child: ElevatedButton(
            onPressed: () => ScaffoldMessenger.of(context).showMaterialBanner(
                  MaterialBanner(
                    padding: const EdgeInsets.symmetric(
                        vertical: 8.0, horizontal: 16.0),
                    backgroundColor: Colors.red[200],
                    elevation: 2.0,
                    leading: const Icon(Icons.notifications_active_outlined),
                    content: const Text(
                      'hello, world',
                      style: TextStyle(fontSize: 18.0, color: Colors.white),
                    ),
                    actions: <Widget>[
                      TextButton(
                        onPressed: () => ScaffoldMessenger.of(context)
                            .hideCurrentMaterialBanner(),
                        child: const Text('Close'),
                      ),
                    ],
                  ),
                ),
            child: const Text('Open')),
      ),
    );
  }
}
