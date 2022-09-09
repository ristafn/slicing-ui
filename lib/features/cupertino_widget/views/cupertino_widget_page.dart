import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class CupertinoWidgetPage extends StatelessWidget {
  const CupertinoWidgetPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Cupertino Widget'),
      ),
      body: const Center(
        child: Text('Cupertino Widget'),
      ),
    );
  }
}
