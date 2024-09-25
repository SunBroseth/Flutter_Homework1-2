import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('BBU STORE'),
      ),
      drawer: const Drawer(),
      body: Container(
        color: const Color(0xe4e4e4e4),
        child: Stack(
          children: <Widget>[
            // background
            Container(
              height: 80,
              decoration: const BoxDecoration(
                color: Colors.blue,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(20),
                  bottomRight: Radius.circular(20),
                ),
              ),
            ),
            // Contents
            ListView(
              children: <Widget>[
                Container(
                  height: 140,
                  margin: const EdgeInsets.fromLTRB(10, 0, 10, 10),
                  child: const Card(),
                ),
                GridView.count(
                  crossAxisCount: 2,
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  children: <Widget>[
                    // Card 1
                    Container(
                      margin: const EdgeInsets.fromLTRB(10, 0, 10, 10),
                      // child: const Card(),
                       child: Card(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Container(
                              padding: const EdgeInsets.all(10),
                              decoration: const BoxDecoration(
                                color: Colors.blue,
                                borderRadius: BorderRadius.all(
                                  Radius.circular(180),
                                ),
                              ),
                              child: const Icon(
                                Icons.person,
                                size: 52,
                                color: Colors.white,
                              ),
                            ),
                            const SizedBox(height: 10.0),
                            const Text(
                              'CONTACTS',
                              style: TextStyle(
                                color: Colors.blue,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ),

                    ),
                    // Card 2
                    Container(
                      margin: const EdgeInsets.fromLTRB(0, 0, 10, 10),
                      // child: const Card(),
                       child: Card(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Container(
                              padding: const EdgeInsets.all(10),
                              decoration: const BoxDecoration(
                                color: Colors.blue,
                                borderRadius: BorderRadius.all(
                                  Radius.circular(180),
                                ),
                              ),
                              child: const Icon(
                                Icons.people,
                                size: 52,
                                color: Colors.white,
                              ),
                            ),
                            const SizedBox(height: 10.0),
                            const Text(
                              'GROUPS',
                              style: TextStyle(
                                color: Colors.blue,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ),

                    ),
                    // Card 3
                    Container(
                      margin: const EdgeInsets.fromLTRB(10, 0, 10, 10),
                      // child: const Card(),
                       child: Card(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Container(
                              padding: const EdgeInsets.all(10),
                              decoration: const BoxDecoration(
                                color: Colors.blue,
                                borderRadius: BorderRadius.all(
                                  Radius.circular(180),
                                ),
                              ),
                              child: const Icon(
                                Icons.shopping_cart,
                                size: 52,
                                color: Colors.white,
                              ),
                            ),
                            const SizedBox(height: 10.0),
                            const Text(
                              'PRODUCTS',
                              style: TextStyle(
                                color: Colors.blue,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ),

                    ),
                    // Card 4
                    Container(
                      margin: const EdgeInsets.fromLTRB(0, 0, 10, 10),
                      // child: const Card(),
                       child: Card(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Container(
                              padding: const EdgeInsets.all(10),
                              decoration: const BoxDecoration(
                                color: Colors.blue,
                                borderRadius: BorderRadius.all(
                                  Radius.circular(180),
                                ),
                              ),
                              child: const Icon(
                                Icons.category,
                                size: 52,
                                color: Colors.white,
                              ),
                            ),
                            const SizedBox(height: 10.0),
                            const Text(
                              'CATEGORIES',
                              style: TextStyle(
                                color: Colors.blue,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ),

                    ),
                    // Card 5
                    Container(
                      margin: const EdgeInsets.fromLTRB(10, 0, 10, 10),
                      // child: const Card(),
                       child: Card(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Container(
                              padding: const EdgeInsets.all(10),
                              decoration: const BoxDecoration(
                                color: Colors.blue,
                                borderRadius: BorderRadius.all(
                                  Radius.circular(180),
                                ),
                              ),
                              child: const Icon(
                                Icons.question_mark,
                                size: 52,
                                color: Colors.white,
                              ),
                            ),
                            const SizedBox(height: 10.0),
                            const Text(
                              'HELP',
                              style: TextStyle(
                                color: Colors.blue,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ),

                    ),
                    // Card 6
                    Container(
                      margin: const EdgeInsets.fromLTRB(0, 0, 10, 10),
                      // child: const Card(),
                       child: Card(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Container(
                              padding: const EdgeInsets.all(10),
                              decoration: const BoxDecoration(
                                color: Colors.blue,
                                borderRadius: BorderRadius.all(
                                  Radius.circular(180),
                                ),
                              ),
                              child: const Icon(
                                Icons.settings,
                                size: 52,
                                color: Colors.white,
                              ),
                            ),
                            const SizedBox(height: 10.0),
                            const Text(
                              'SETTING',
                              style: TextStyle(
                                color: Colors.blue,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ),

                    ),
                  ],
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
