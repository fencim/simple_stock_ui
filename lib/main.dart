import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Simple Stock',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const HomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  //preloading icons
  Map<String, Icon> iconMap = {
    'person': const Icon(Icons.person),
    'settings': const Icon(Icons.settings),
    'notes_sharp': const Icon(Icons.notes_sharp),
    'heart_broken': const Icon(Icons.heart_broken)
  };
  List<HomeMenu> menu = [
    HomeMenu(name: 'Personal Data', icon: 'person'),
    HomeMenu(name: 'Settings', icon: 'settings'),
    HomeMenu(name: 'E-Statement', icon: 'notes_sharp'),
    HomeMenu(name: 'Referal Code', icon: 'heart_broken')
  ];
  
  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
        body: Column(
      children: [
        Row(
          children: [
            Container(
              margin: const EdgeInsets.only(
                left: 16,
                top: 16,
              ),
              height: 64,
              width: 64,
              child: const CircleAvatar(
                backgroundImage: NetworkImage(
                    'https://media-exp1.licdn.com/dms/image/C5603AQH0N150mG0GIg/profile-displayphoto-shrink_200_200/0/1617267809315?e=2147483647&v=beta&t=u-1yUx5xYTkSEisAt7XT1LuKwzJ0F4iNZEtT3fZaQos'),
              ),
            ),
            Column(
              children: [
                Container(
                  margin: const EdgeInsets.only(
                    left: 16,
                    top: 16,
                  ),
                  height: 16,
                  width: 200,
                  child: const Text(
                    'Lucman M. Abdulrachman',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(
                    left: 16,
                    top: 8,
                  ),
                  height: 16,
                  width: 170,
                  child: const Text('University Instructor I'),
                ),
              ],
            )
          ],
        ),
        const SizedBox(height: 16),
        const Divider(height: 1.15),
        for (HomeMenu item in menu) ...[
          const SizedBox(height: 16),
          GestureDetector(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    const SizedBox(
                      width: 16,
                    ),
                    Container(
                      height: 48,
                      width: 48,
                      color: Colors.transparent,
                      child: iconMap[item.icon],
                    ),
                    const SizedBox(
                      width: 16,
                    ),
                    Container(
                      height: 14,
                      width: 120,
                      color: Colors.transparent,
                      child: Text(item.name,
                          style: const TextStyle(
                              fontSize: 12, fontWeight: FontWeight.bold)),
                    ),
                  ],
                ),
                Container(
                  margin: const EdgeInsets.only(right: 16),
                  height: 12,
                  width: 12,
                  color: Colors.transparent,
                  child: const Icon(Icons.arrow_right),
                ),
              ],
            ),
          )
        ],
        const SizedBox(height: 16),
        const Divider(height: 1.15),
        for (var i = 0; i < 3; i++) ...[
          const SizedBox(height: 16),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  const SizedBox(
                    width: 16,
                  ),
                  Container(
                    height: 48,
                    width: 48,
                    color: Colors.red,
                  ),
                  const SizedBox(
                    width: 16,
                  ),
                  Container(
                    height: 12,
                    width: 120,
                    color: Colors.blue,
                  ),
                ],
              ),
              Container(
                margin: const EdgeInsets.only(right: 16),
                height: 12,
                width: 12,
                color: Colors.yellow,
              ),
            ],
          )
        ]
      ],
    ));
  }
}

class HomeMenu {
  final String name;
  final String icon;
  HomeMenu({
    required this.name,
    required this.icon,
  });
}
