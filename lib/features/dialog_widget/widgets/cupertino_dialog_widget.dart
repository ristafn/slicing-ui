import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CupertinoDialogWidget extends StatelessWidget {
  const CupertinoDialogWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        showCupertinoDialog(
          context: context,
          builder: (BuildContext context) {
            return CupertinoAlertDialog(
              title: const Text('Cupertino dialog'),
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
      child: const Text('Cupertino Dialog'),
    );
  }
}
