import 'package:flutter/material.dart';

class StatefulPage extends StatefulWidget {
  const StatefulPage({Key? key}) : super(key: key);

  @override
  State<StatefulPage> createState() => _StatefulPageState();
}

class _StatefulPageState extends State<StatefulPage> {
  @override
  void initState() {
    super.initState();
    print('Do the init state');
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    print('Do the did change depedencies');
  }

  @override
  void didUpdateWidget(covariant StatefulPage oldWidget) {
    super.didUpdateWidget(oldWidget);
    print('Do the did update widget');
  }

  @override
  void setState(VoidCallback fn) {
    super.setState(fn);
    print('Do the set state');
  }

  @override
  void dispose() {
    super.dispose();
    print('Do the dispose');
  }

  @override
  void deactivate() {
    super.deactivate();
    print('Do the deactive');
  }

  double _onSlide = 0;
  bool _isSwitched = false;
  bool _isChecked = false;

  @override
  Widget build(BuildContext context) {
    const TextStyle titleStyle = TextStyle(
      fontSize: 20,
      fontWeight: FontWeight.bold,
    );

    return Scaffold(
      appBar: AppBar(
        title: const Text('Stateful'),
      ),
      body: Container(
        margin: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Slider',
              style: titleStyle,
            ),
            const SizedBox(
              height: 10,
            ),
            Slider(
              value: _onSlide,
              onChanged: (value) {
                setState(() {
                  _onSlide = value;
                });
              },
              divisions: 5,
              activeColor: Colors.green,
              thumbColor: Colors.amber,
            ),
            const SizedBox(
              height: 20,
            ),
            const Text(
              'Switch',
              style: titleStyle,
            ),
            const SizedBox(
              height: 10,
            ),
            Switch(
              value: _isSwitched,
              onChanged: (value) {
                setState(() {
                  _isSwitched = value;
                });
              },
            ),
            const SizedBox(
              height: 20,
            ),
            const Text(
              'Checkbox',
              style: titleStyle,
            ),
            const SizedBox(
              height: 10,
            ),
            Checkbox(
              value: _isChecked,
              onChanged: (value) {
                setState(() {
                  _isChecked = value!;
                });
              },
            ),
            const SizedBox(
              height: 20,
            ),
          ],
        ),
      ),
    );
  }
}
