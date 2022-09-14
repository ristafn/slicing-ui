import 'package:flutter/material.dart';
import 'package:flutter_application_1/routes.dart';

import '../implementation/home_impl.dart';
import '../models/feature/feature.dart';
import '../widgets/listview_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final HomeImplement impl = HomeImplement();

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text('Home'),
      ),
      body: FutureBuilder<List<Feature>?>(
        future: impl.fetchFeature(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return ListViewWidget(snapshot: snapshot, pages: Routes.pages);
          }

          return const Center(
            child: CircularProgressIndicator(),
          );
        },
      ),
    );
  }
}
