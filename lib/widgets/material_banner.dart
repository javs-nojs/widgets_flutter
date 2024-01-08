import 'package:flutter/material.dart';

class Example extends StatelessWidget {
  const Example({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ElevatedButton(
          onPressed: () => ScaffoldMessenger.of(context).showMaterialBanner(
                MaterialBanner(
                  padding: const EdgeInsets.all(20.0),
                  backgroundColor: Colors.red,
                  elevation: 5,
                  leading: const Icon(Icons.notifications_active_outlined),
                  content: const Text('hello'),
                  actions: <Widget>[
                    TextButton(
                      onPressed: () => ScaffoldMessenger.of(context)
                          .hideCurrentMaterialBanner(),
                      child: const Text('dissmis'),
                    ),
                  ],
                ),
              ),
          child: const Text('Open')),
    );
  }
}
