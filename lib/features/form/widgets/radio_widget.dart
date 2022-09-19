import 'package:flutter/material.dart';

class RadioWidget extends StatefulWidget {
  RadioWidget(this.gender, {super.key});

  String gender = 'Laki-laki';

  @override
  State<RadioWidget> createState() => _RadioWidgetState();
}

class _RadioWidgetState extends State<RadioWidget> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          title: const Text('laki-laki'),
          leading: Radio(
            value: "Laki-laki",
            onChanged: (value) {
              setState(() {
                widget.gender = value.toString();
              });

              print(widget.gender);
            },
            groupValue: widget.gender,
          ),
        ),
        ListTile(
          title: const Text('Perempuan'),
          leading: Radio(
            value: "Perempuan",
            onChanged: (value) {
              setState(() {
                widget.gender = value.toString();
              });

              print(widget.gender);
            },
            groupValue: widget.gender,
          ),
        ),
      ],
    );
  }
}
