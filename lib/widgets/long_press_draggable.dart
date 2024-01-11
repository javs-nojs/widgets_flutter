import 'package:flutter/material.dart';

class LongPressDraggableExample extends StatefulWidget {
  const LongPressDraggableExample({super.key});

  @override
  State<LongPressDraggableExample> createState() =>
      _LongPressDraggableExampleState();
}

class _LongPressDraggableExampleState extends State<LongPressDraggableExample> {
  Offset _offset = const Offset(200, 250);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: ThemeData.light().colorScheme.inversePrimary,
        title: const Text('Long Press Draggable'),
      ),
      body: Center(
        child: LayoutBuilder(
          builder: (context, constraints) {
            return Stack(
              children: [
                Positioned(
                  left: _offset.dx,
                  top: _offset.dy,
                  child: LongPressDraggable(
                    feedback: Image.asset(
                      'assets/images/einstein.jpg',
                      height: 200.0,
                      color: Colors.pinkAccent,
                      colorBlendMode: BlendMode.colorBurn,
                    ),
                    child: Image.asset(
                      'assets/images/einstein.jpg',
                      height: 200.0,
                    ),
                    onDragEnd: (details) {
                      setState(() {
                        double adjustment = MediaQuery.of(context).size.height -
                            constraints.maxHeight;

                        _offset = Offset(
                            details.offset.dx, details.offset.dy - adjustment);
                      });
                    },
                  ),
                )
              ],
            );
          },
        ),
      ),
    );
  }
}
