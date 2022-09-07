import 'package:flutter/material.dart';

class IncrementPage extends StatefulWidget {
  const IncrementPage({super.key});

  @override
  State<IncrementPage> createState() => _IncrementPageState();
}

class _IncrementPageState extends State<IncrementPage> {
  int _num = 0;

  void increment() {
    setState(() {
      _num++;
    });
  }

  void decrement() {
    setState(() {
      if (_num < 1) {
        _num = 0;
      } else {
        _num--;
      }
    });
  }

  void reset() {
    setState(() {
      _num = 0;
    });
  }

  final TextStyle _textStyle =
      const TextStyle(fontSize: 50, color: Colors.white);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Container(
          alignment: Alignment.center,
          width: 200,
          height: 200,
          color: const Color.fromARGB(255, 194, 194, 194),
          child: Text(
            '$_num',
            style: _textStyle,
          ),
        ),
      ),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: <Widget>[
          FloatingActionButton(
            onPressed: increment,
            child: const Icon(Icons.add),
          ),
          const SizedBox(height: 10),
          FloatingActionButton(
            onPressed: decrement,
            child: const Icon(Icons.horizontal_rule_outlined),
          ),
          const SizedBox(height: 10),
          FloatingActionButton(
            onPressed: reset,
            child: const Icon(Icons.delete),
          ),
        ],
      ),
    );
  }
}