import 'package:flutter/material.dart';

import '../widgets/cupertino_modal_widget.dart';
import '../widgets/material_modal_widget.dart';

class ModalBottomPage extends StatelessWidget {
  const ModalBottomPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Modal BottomSheet'),
      ),
      body: Container(
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            MaterialModalWidget(),
            SizedBox(
              height: 20.0,
            ),
            CupertinoModalWidget(),
          ],
        ),
      ),
    );
  }
}
