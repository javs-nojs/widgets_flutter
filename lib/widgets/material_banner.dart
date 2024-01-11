import 'package:flutter/material.dart';

class MaterialBannerExample extends StatelessWidget {
  const MaterialBannerExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ElevatedButton(
          onPressed: () => ScaffoldMessenger.of(context).showMaterialBanner(
                MaterialBanner(
                  padding: const EdgeInsets.all(20.0),
                  backgroundColor: Colors.red[200],
                  elevation: 2.0,
                  leading: const Icon(Icons.notifications_active_outlined),
                  content: const Text(
                    'hello, world',
                    style: TextStyle(fontSize: 20.0, color: Colors.white),
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
    );
  }
}
