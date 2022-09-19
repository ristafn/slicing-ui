import 'package:flutter/material.dart';

class PageViewPage extends StatelessWidget {
  const PageViewPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final PageController controller = PageController();

    return Scaffold(
      appBar: AppBar(
        title: const Text('Page View'),
      ),
      body: Stack(
        children: [
          PageView.builder(
            controller: controller,
            itemCount: 5,
            itemBuilder: (context, i) {
              return Center(
                child: Text('$i'),
              );
            },
          ),
          Container(
            margin: const EdgeInsets.only(bottom: 20),
            alignment: Alignment.bottomCenter,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                ElevatedButton(
                  onPressed: () async {
                    await controller.previousPage(
                      duration: const Duration(milliseconds: 1),
                      curve: Curves.easeInOut,
                    );
                  },
                  child: const Text('Previous'),
                ),
                ElevatedButton(
                  onPressed: () async {
                    await controller.nextPage(
                      duration: const Duration(milliseconds: 1),
                      curve: Curves.easeInOut,
                    );
                  },
                  child: const Text('Next'),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
