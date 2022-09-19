import 'package:flutter/material.dart';

class ListBuilderPage extends StatelessWidget {
  const ListBuilderPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('List Builder'),
      ),
      body: ListView.builder(
        itemCount: 10,
        itemBuilder: (context, i) {
          return ListTile(
            onTap: () {},
            leading: CircleAvatar(
              child: Text('$i'),
            ),
            title: Text('title $i'),
            subtitle: Text('subtitle $i'),
            trailing: IconButton(
              onPressed: () {},
              icon: const Icon(Icons.delete),
            ),
          );
        },
      ),
    );
  }
}
