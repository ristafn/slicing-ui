import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CupertinoModalWidget extends StatelessWidget {
  const CupertinoModalWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        showCupertinoModalPopup(
          context: context,
          builder: (BuildContext context) {
            return CupertinoActionSheet(
              title: const Text('Cupertino modal sheet'),
              actions: [
                CupertinoActionSheetAction(
                  onPressed: () => Navigator.pop(context),
                  child: const Text(
                    'Close BottomSheet',
                  ),
                ),
              ],
            );
          },
        );
      },
      child: const Text('Cupertino Bottom Modal sheet'),
    );
  }
}
