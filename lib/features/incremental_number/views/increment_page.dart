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
      const TextStyle(fontSize: 50, color: Colors.black);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Increment Page'),
      ),
      body: Center(
        child: Container(
          alignment: Alignment.center,
          width: 200,
          height: 200,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16.0),
            color: Colors.white,
            boxShadow: const [
              BoxShadow(
                color: Colors.grey,
                spreadRadius: 1,
                blurRadius: 2,
                offset: Offset(2, 2),
              ),
            ],
          ),
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
            heroTag: 'increment',
            onPressed: increment,
            child: const Icon(Icons.add),
          ),
          const SizedBox(height: 10),
          FloatingActionButton(
            heroTag: 'decrement',
            onPressed: decrement,
            child: const Icon(Icons.horizontal_rule_outlined),
          ),
          const SizedBox(height: 10),
          FloatingActionButton(
            heroTag: 'reset',
            onPressed: reset,
            child: const Icon(Icons.delete),
          ),
        ],
      ),
    );
  }
}
