import 'package:flutter/material.dart';

class TextFormWidget extends StatefulWidget {
  const TextFormWidget({super.key});

  @override
  State<TextFormWidget> createState() => _TextFormWidgetState();
}

class _TextFormWidgetState extends State<TextFormWidget> {
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onChanged: (value) {
        print('Your input is : $value');
      },
      decoration: const InputDecoration(
        border: OutlineInputBorder(),
      ),
    );
  }
}
