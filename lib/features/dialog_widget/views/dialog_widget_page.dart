import 'package:flutter/material.dart';
import 'package:flutter_application_1/features/dialog_widget/widgets/cupertino_dialog_widget.dart';
import 'package:flutter_application_1/features/dialog_widget/widgets/material_dialog_widget.dart';

class DialogWidgetPage extends StatelessWidget {
  const DialogWidgetPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Dialog Widget'),
      ),
      body: Container(
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            MaterialDialogWidget(),
            SizedBox(
              height: 20.0,
            ),
            CupertinoDialogWidget(),
          ],
        ),
      ),
    );
  }
}
