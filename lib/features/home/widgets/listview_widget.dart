import 'package:flutter/material.dart';

import 'package:flutter_application_1/features/home/models/feature/feature.dart';
import 'package:flutter_application_1/features/home/widgets/listtile_widget.dart';

class ListViewWidget extends StatelessWidget {
  const ListViewWidget({
    Key? key,
    required this.snapshot,
    required this.pages,
  }) : super(key: key);

  final AsyncSnapshot<List<Feature>?> snapshot;
  final List<String> pages;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: pages.length,
      itemBuilder: (context, index) {
        final data = snapshot.data![index];
        final page = pages[index];

        return ListTileWidget(
          data: data,
          page: page,
        );
      },
    );
  }
}
