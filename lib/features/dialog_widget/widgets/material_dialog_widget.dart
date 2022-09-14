import 'package:flutter/material.dart';

class MaterialDialogWidget extends StatelessWidget {
  const MaterialDialogWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        showDialog(
          context: context,
          builder: (BuildContext context) {
            return AlertDialog(
              title: const Text('Material dialog'),
              content: const Text('Lorem ipsum sir dolor amet'),
              actions: [
                TextButton(
                  onPressed: () => Navigator.pop(context),
                  child: const Text(
                    'close',
                    style: TextStyle(
                      color: Colors.red,
                    ),
                  ),
                ),
              ],
            );
          },
        );
      },
      child: const Text('Material Dialog'),
    );
  }
}
