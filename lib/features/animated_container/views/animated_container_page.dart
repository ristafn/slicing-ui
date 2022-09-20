import 'dart:math';

import 'package:flutter/material.dart';

class AnimatedContainerPage extends StatefulWidget {
  const AnimatedContainerPage({super.key});

  @override
  State<AnimatedContainerPage> createState() => _AnimatedContainerPageState();
}

class _AnimatedContainerPageState extends State<AnimatedContainerPage> {
  double _width = Random().nextDouble() * 100;
  double _height = Random().nextDouble() * 100;
  final List<Color> _listColor = [Colors.red, Colors.blue, Colors.green];
  Color _color = Colors.red;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Animated Container (implicit animation)'),
      ),
      body: Center(
        child: AnimatedContainer(
          width: _width,
          height: _height,
          color: _color,
          duration: const Duration(seconds: 1),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            _width = Random().nextDouble() * 100;
            _height = Random().nextDouble() * 100;
            _color = _listColor[Random().nextInt(_listColor.length)];
          });
        },
        child: const Icon(Icons.loop),
      ),
    );
  }
}
