import 'package:flutter/material.dart';

class ListSeparatorPage extends StatelessWidget {
  const ListSeparatorPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('List Separator'),
      ),
      body: ListView.separated(
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
        separatorBuilder: (context, i) {
          return const Divider();
        },
        itemCount: 10,
      ),
    );
  }
}
