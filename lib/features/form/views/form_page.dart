import 'package:flutter/material.dart';
import 'package:flutter_application_1/features/form/widgets/checked_list_widget.dart';
import 'package:flutter_application_1/features/form/widgets/radio_widget.dart';
import 'package:flutter_application_1/features/form/widgets/text_from_widget.dart';

class FormPage extends StatefulWidget {
  const FormPage({super.key});

  @override
  State<FormPage> createState() => _FormPageState();
}

class _FormPageState extends State<FormPage> {
  final TextStyle _titleStyle = const TextStyle(
    fontWeight: FontWeight.bold,
    fontSize: 20,
  );

  final List<String> days = [
    "senin",
    "selasa",
    "rabu",
    "kamis",
    "Jumat",
    "sabtu",
    "Minggu"
  ];

  final List<String> selectedDays = [];

  final String gender = 'Laki-laki';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Form'),
      ),
      body: Container(
        margin: const EdgeInsets.all(15.0),
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Text Form Field',
                style: _titleStyle,
              ),
              const SizedBox(
                height: 10,
              ),
              const TextFormWidget(),
              const SizedBox(
                height: 20,
              ),
              Text(
                'Radio',
                style: _titleStyle,
              ),
              const SizedBox(
                height: 10,
              ),
              RadioWidget(gender),
              const SizedBox(
                height: 20,
              ),
              Text(
                'Checked list',
                style: _titleStyle,
              ),
              const SizedBox(
                height: 10,
              ),
              CheckedListWidget(
                days: days,
                selectedDays: selectedDays,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
