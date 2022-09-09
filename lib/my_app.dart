import 'package:flutter/material.dart';

import 'const/routes.dart';
import 'routes.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: homeRoute,
      routes: Routes.route(),
    );
  }
}
