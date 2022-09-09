import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class DialogWidgetPage extends StatelessWidget {
  const DialogWidgetPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Dialog Widget'),
      ),
      body: const Center(
        child: Text('Dialog widget'),
      ),
    );
  }
}
