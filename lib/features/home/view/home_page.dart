import 'package:flutter/material.dart';

import '../../../const/routes.dart';
import '../implementation/home_impl.dart';
import '../models/feature/feature.dart';
import '../widgets/listview_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final HomeImplement impl = HomeImplement();
    final List<String> pages = [
      incrementRoute,
      slicingRoute,
      parseRoute,
      cupertinoRoute,
      dialogRoute,
      formRoute,
    ];

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text('Home'),
      ),
      body: FutureBuilder<List<Feature>?>(
        future: impl.fetchFeature(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return ListViewWidget(snapshot: snapshot, pages: pages);
          }

          return const Center(
            child: CircularProgressIndicator(),
          );
        },
      ),
    );
  }
}
