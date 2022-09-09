import 'package:flutter/material.dart';

import '../models/feature/feature.dart';

class ListTileWidget extends StatelessWidget {
  const ListTileWidget({
    Key? key,
    required this.data,
    required this.page,
  }) : super(key: key);

  final Feature data;
  final String page;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: () => Navigator.pushNamed(context, page),
      tileColor: Colors.white,
      leading: const CircleAvatar(
        child: Icon(Icons.grass),
      ),
      title: Text(data.title),
      subtitle: Text(data.createdAt),
    );
  }
}
