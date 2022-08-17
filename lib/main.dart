import 'package:flutter/material.dart';
import 'home_menu.dart';

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
  // Map<String, IconData> iconMap = {
  //   'person': const (Icons.person),
  //   'settings': const (Icons.settings),
  //   'notes_sharp': const (Icons.receipt_long_sharp),
  //   'favorite': const (Icons.favorite),
  //   'pending': const (Icons.pending),
  //   'drive_file_rename_outline_rounded':
  //       const (Icons.drive_file_rename_outline_rounded),
  //   'groups': const (Icons.groups)
  // };
  // List<HomeMenu> profileMenu = [
  //   HomeMenu(name: 'Personal Data', icon: 'person'),
  //   HomeMenu(name: 'Settings', icon: 'settings'),
  //   HomeMenu(name: 'E-Statement', icon: 'notes_sharp'),
  //   HomeMenu(name: 'Referal Code', icon: 'favorite')
  // ];

  // List<HomeMenu> appMenu = [
  //   HomeMenu(name: 'FAQs', icon: 'pending'),
  //   HomeMenu(name: 'Our Handbook', icon: 'drive_file_rename_outline_rounded'),
  //   HomeMenu(name: 'Community', icon: 'groups')
  // ];

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      body: SingleChildScrollView(
          child: Column(
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
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Image.network(
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
                    width: 170,
                    child: Text(
                      'University Instructor I',
                      style: TextStyle(
                        color: Colors.black.withOpacity(0.5),
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
          const SizedBox(height: 16),
          const Divider(height: 1.15),
          GestureDetector(
            child: const ProfileMenu(
              item: 'Personal Data',
              icon: Icons.person,
            ),
          ),
          GestureDetector(
            child: const ProfileMenu(
              item: 'Settings',
              icon: Icons.settings,
            ),
          ),
          GestureDetector(
            child: const ProfileMenu(
              item: 'E-Statement',
              icon: Icons.notes_sharp,
            ),
          ),
          const SizedBox(height: 16),
          const Divider(height: 1.15),
          GestureDetector(
            child: const ProfileMenu(
              item: 'FAQs',
              icon: Icons.pending,
            ),
          ),
          GestureDetector(
            child: const ProfileMenu(
              item: 'Our Handbook',
              icon: Icons.drive_file_rename_outline,
            ),
          ),
          GestureDetector(
            child: const ProfileMenu(
              item: 'E-Statement',
              icon: Icons.notes_sharp,
            ),
          ),
          const SizedBox(height: 16),
          Card(
            margin: const EdgeInsets.only(right: 16, left: 16),
            color: Colors.lightBlue,
            child: Row(
              children: [
                Container(
                    margin:
                        const EdgeInsets.only(left: 25, bottom: 16, top: 16),
                    height: 12,
                    width: 12,
                    color: Colors.transparent,
                    child: const Icon(Icons.support_agent_outlined)),
                Container(
                  margin: const EdgeInsets.only(left: 16),
                  
                  color: Colors.transparent,
                  child: const Text('Feel free to ask. We are ready to help.'),
                )
              ],
            ),
          ),
          
        ],
      )),
      bottomNavigationBar: NavigationBar(destinations: [
        TextButton(onPressed: () => {}, child: const Icon(Icons.home)),
        TextButton(onPressed: () => {}, child: const Icon(Icons.pin_invoke)),
        TextButton(onPressed: () => {}, child: const Icon(Icons.mail)),
        TextButton(onPressed: () => {}, child: const Icon(Icons.person))
      ]),
    );
  }
}

class ProfileMenu extends StatelessWidget {
  final String item;
  final IconData icon;
  const ProfileMenu({Key? key, required this.item, required this.icon})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(children: [
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
                decoration: BoxDecoration(
                    color: Colors.grey.withOpacity(0.5),
                    borderRadius: BorderRadius.circular(12)),
                child: Icon(icon),
              ),
              const SizedBox(
                width: 16,
              ),
              Container(
                color: Colors.transparent,
                child: Text(item,
                    style: const TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.bold,
                    )),
              ),
            ],
          ),
          Container(
            margin: const EdgeInsets.only(right: 16),
            decoration: BoxDecoration(
                color: Colors.grey.withOpacity(0.2),
                borderRadius: BorderRadius.circular(5)),
            child: const Icon(Icons.arrow_right),
          ),
        ],
      )
    ]);
  }
}
