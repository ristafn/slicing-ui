import 'package:flutter/material.dart';

class CheckedListWidget extends StatefulWidget {
  const CheckedListWidget({super.key, required this.days, required this.selectedDays});

  final List<String> days;
  final List<String> selectedDays;

  @override
  State<CheckedListWidget> createState() => _CheckedListWidgetState();
}

class _CheckedListWidgetState extends State<CheckedListWidget> {
  

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 150.0,
      child: ListView(
        children: List.generate(widget.days.length, (index) {
          var day = widget.days[index];
          return CheckboxListTile(
            value: widget.selectedDays.contains(day),
            onChanged: ((value) {
              setState(() {
                if (value!) {
                  widget.selectedDays.add(day);
                } else {
                  widget.selectedDays.remove(day);
                }

                setState(() {});
                print(widget.selectedDays);
              });
            }),
            title: Text(day),
          );
        }),
      ),
    );
  }
}
