import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Container(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Expanded(
                  flex: 2,
                  child: Container(
                    child: Column(
                      children: [
                        Container(
                          width: double.infinity,
                          padding: const EdgeInsets.all(5.0),
                          decoration: BoxDecoration(
                            color: Colors.blue.shade100,
                            border: Border.all(
                              color: Colors.black,
                              width: 0.5,
                            ),
                          ),
                          child: const Align(
                            alignment: Alignment.center,
                            child: Text(
                              'Strawberry Pavlova',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        Container(
                          width: double.infinity,
                          decoration: BoxDecoration(
                            color: Colors.blue.shade100,
                            border: Border.all(
                              color: Colors.black,
                              width: 0.5,
                            ),
                          ),
                          child: const Align(
                            alignment: Alignment.center,
                            child: Text(
                              'Pavlova is a meringue-based dessert named after the Russian ballerina Anna Pavlova. Pavlova features a crisp crust and soft, light inside, topped with fruit and whipped cream',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 12.0,
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        Container(
                          width: double.infinity,
                          decoration: BoxDecoration(
                            color: Colors.blue.shade100,
                            border: Border.all(
                              color: Colors.black,
                              width: 0.5,
                            ),
                          ),
                          child: const Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Row(
                                children: [
                                  Icon(
                                    Icons.star,
                                    size: 12.0,
                                    color: Colors.black54,
                                  ),
                                  Icon(
                                    Icons.star,
                                    size: 12.0,
                                    color: Colors.black54,
                                  ),
                                  Icon(
                                    Icons.star,
                                    size: 12.0,
                                    color: Colors.black54,
                                  ),
                                  Icon(
                                    Icons.star,
                                    size: 12.0,
                                    color: Colors.black54,
                                  ),
                                  Icon(
                                    Icons.star,
                                    size: 12.0,
                                    color: Colors.black54,
                                  ),
                                ],
                              ),
                              Text(
                                '170 Reviews',
                                style: TextStyle(
                                  fontSize: 10.0,
                                  color: Colors.black54,
                                ),
                              )
                            ],
                          ),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        Container(
                          width: double.infinity,
                          decoration: BoxDecoration(
                            color: Colors.blue.shade100,
                            border: Border.all(
                              color: Colors.black,
                              width: 0.5,
                            ),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Column(
                                children: [
                                  Icon(
                                    Icons.kitchen_outlined,
                                    color: Colors.green[500],
                                    size: 12.0,
                                  ),
                                  const Text(
                                    'PREP:',
                                    style: TextStyle(fontSize: 10.0),
                                  ),
                                  const Text(
                                    '25 min',
                                    style: TextStyle(fontSize: 10.0),
                                  ),
                                ],
                              ),
                              Column(
                                children: [
                                  Icon(
                                    Icons.timer_outlined,
                                    color: Colors.green[500],
                                    size: 12.0,
                                  ),
                                  const Text(
                                    'COOK:',
                                    style: TextStyle(fontSize: 10.0),
                                  ),
                                  const Text(
                                    '1 hr',
                                    style: TextStyle(fontSize: 10.0),
                                  ),
                                ],
                              ),
                              Container(
                                padding: const EdgeInsets.all(5.0),
                                child: Column(
                                  children: [
                                    Icon(
                                      Icons.restaurant_outlined,
                                      color: Colors.green[500],
                                      size: 12.0,
                                    ),
                                    const Text(
                                      'FEEDS:',
                                      style: TextStyle(fontSize: 10.0),
                                    ),
                                    const Text(
                                      '4-6',
                                      style: TextStyle(fontSize: 10.0),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  width: 5.0,
                ),
                Expanded(
                  flex: 3,
                  child: Column(
                    children: [
                      Image.asset(
                        'static/images/pancake.jpg',
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
