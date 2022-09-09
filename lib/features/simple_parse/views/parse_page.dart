import 'package:flutter/material.dart';

import '../implementation/parse_impl.dart';
import '../models/parse/parse.dart';

class ParsePage extends StatefulWidget {
  const ParsePage({super.key});

  @override
  State<ParsePage> createState() => _ParsePageState();
}

class _ParsePageState extends State<ParsePage> {
  final parse = ParseImplementation();

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Simple Parse'),
      ),
      body: FutureBuilder<List<Parse>>(
        future: parse.fetch(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return ListView.builder(
              itemCount: snapshot.data!.length,
              itemBuilder: (context, index) {
                var snap = snapshot.data![index];
                return ListTile(
                  leading: const CircleAvatar(
                    child: Icon(Icons.person),
                  ),
                  title: Text(snap.name),
                  subtitle: Text(snap.gender),
                );
              },
            );
          }

          // * show dirty FutureBuilder if not handle the load state
          return const CircularProgressIndicator();
        },
      ),
    );
  }
}
