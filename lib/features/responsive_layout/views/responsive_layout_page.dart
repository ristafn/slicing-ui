import 'package:flutter/material.dart';

import 'my_media_query.dart';

class ResponsiveLayoutPage extends StatelessWidget {
  const ResponsiveLayoutPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);
    final width = mediaQuery.size.width; // 500
    final height = mediaQuery.size.height; // 657
    final padding = mediaQuery.padding;
    final appBar = AppBar(
      title: const Text('Responsive Layout'),
    );

    // _padding.top = 0
    // _appBar.preferredSize.height = 56
    final heightBody = height - padding.top - appBar.preferredSize.height;

    return Scaffold(
      appBar: appBar,
      body: Column(
        children: [
          Container(
            width: width,
            height: heightBody * 0.3,
            color: Colors.green,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                MyContainer(
                  widthApp: width,
                ),
                MyContainer(
                  widthApp: width,
                ),
                MyContainer(
                  widthApp: width,
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => MyMediaQuery(),
                ),
              );
            },
            child: const Text('Media Query'),
          ),
        ],
      ),
    );
  }
}

class MyContainer extends StatelessWidget {
  const MyContainer({Key? key, required this.widthApp}) : super(key: key);

  final double widthApp;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      return Container(
        width: widthApp * 0.25,
        height: constraints.maxHeight * 0.3,
        color: Colors.amber,
      );
    });
  }
}
