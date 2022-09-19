import 'package:flutter/material.dart';

class StatefulPage extends StatefulWidget {
  const StatefulPage({Key? key}) : super(key: key);

  @override
  State<StatefulPage> createState() => _StatefulPageState();
}

class _StatefulPageState extends State<StatefulPage> {
  final TextEditingController _editingController = TextEditingController();

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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Stateful'),
      ),
      body: Container(),
    );
  }
}
