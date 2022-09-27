import 'package:flutter/material.dart';

class CustomImagePage extends StatelessWidget {
  const CustomImagePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Container(
          width: 300,
          height: 300,
          decoration: const BoxDecoration(
            color: Colors.amber,
            shape: BoxShape.circle,
            image: DecorationImage(
              fit: BoxFit.cover,
              image: AssetImage(
                'assets/images/lake.jpg',
              ),
            ),
          ),
        ),
      ),
    );
  }
}
