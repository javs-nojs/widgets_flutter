import 'package:flutter/material.dart';

class ModalButtonSheetExample extends StatefulWidget {
  const ModalButtonSheetExample({super.key});

  @override
  State<ModalButtonSheetExample> createState() =>
      _ModalButtonSheetExampleState();
}

class _ModalButtonSheetExampleState extends State<ModalButtonSheetExample> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: ThemeData.light().colorScheme.inversePrimary,
        title: const Text('Modal Button Sheet'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () => showModalBottomSheet(
            context: context,
            builder: (context) {
              return SizedBox(
                height: 400.0,
                child: Center(
                  child: ElevatedButton(
                      onPressed: () => Navigator.pop(context),
                      child: const Text('Close')),
                ),
              );
            },
          ),
          child: const Text('Modal Button Sheet'),
        ),
      ),
    );
  }
}
