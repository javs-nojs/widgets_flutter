import 'package:flutter/material.dart';

class PreferredSizeExample extends StatelessWidget {
  const PreferredSizeExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(80.0),
        child: Container(
          height: 120.0,
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Colors.pinkAccent,
                Colors.purpleAccent,
              ],
            ),
          ),
          child: const Center(
            child: SafeArea(
              child: ListTile(
                title: Text(
                  'Preferred Size',
                  style: TextStyle(color: Colors.white, fontSize: 20.0),
                ),
                trailing: Icon(
                  Icons.search,
                  size: 30.0,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
