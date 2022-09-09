import 'package:flutter/material.dart';

class SlicingUIPage extends StatelessWidget {
  const SlicingUIPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Slicing UI'),
      ),
      body: Column(
        children: [
          Image.asset(
            'assets/images/lake.jpg',
            width: 600,
            height: 240,
            fit: BoxFit.cover,
          ),
          // title section
          Container(
            padding: const EdgeInsets.all(32),
            child: Row(
              children: [
                Expanded(
                  /*1*/
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      /*2*/
                      Container(
                        padding: const EdgeInsets.only(bottom: 8),
                        child: const Text(
                          'Oeschinen Lake Campground',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      Text(
                        'Kandersteg, Switzerland',
                        style: TextStyle(
                          color: Colors.grey[500],
                        ),
                      ),
                    ],
                  ),
                ),
                /*3*/
                Icon(
                  Icons.star,
                  color: Colors.red[500],
                ),
                const Text('41'),
              ],
            ),
          ),
          // button section
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.call, color: Theme.of(context).primaryColor),
                  Container(
                    margin: const EdgeInsets.only(top: 8),
                    child: Text(
                      'CALL',
                      style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                        color: Theme.of(context).primaryColor,
                      ),
                    ),
                  ),
                ],
              ),
              Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.near_me, color: Theme.of(context).primaryColor),
                  Container(
                    margin: const EdgeInsets.only(top: 8),
                    child: Text(
                      'ROUTE',
                      style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                        color: Theme.of(context).primaryColor,
                      ),
                    ),
                  ),
                ],
              ),
              Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.share, color: Theme.of(context).primaryColor),
                  Container(
                    margin: const EdgeInsets.only(top: 8),
                    child: Text(
                      'SHARE',
                      style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                        color: Theme.of(context).primaryColor,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
          // text section
          const Padding(
            padding: EdgeInsets.all(32),
            child: Text(
              'Lake Oeschinen lies at the foot of the Blüemlisalp in the Bernese '
              'Alps. Situated 1,578 meters above sea level, it is one of the '
              'larger Alpine Lakes. A gondola ride from Kandersteg, followed by a '
              'half-hour walk through pastures and pine forest, leads you to the '
              'lake, which warms to 20 degrees Celsius in the summer. Activities '
              'enjoyed here include rowing, and riding the summer toboggan run.',
              softWrap: true,
            ),
          ),
        ],
      ),
    );
  }
}
