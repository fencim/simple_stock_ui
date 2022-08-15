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
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
        appBar: AppBar(
          // Here we take the value from the MyHomePage object that was created by
          // the App.build method, and use it to set our appbar title.
          title: Text(widget.title),
        ),
        body: Column(
          children: [
            Row(
              children: [
                Container(
                  margin: const EdgeInsets.only(
                    left: 16,
                    top: 16,
                  ),
                  color: Colors.red,
                  height: 64,
                  width: 64,
                ),
                Column(
                  children: [
                    Container(
                      margin: const EdgeInsets.only(
                        left: 16,
                        top: 16,
                      ),
                      color: Colors.blue,
                      height: 16,
                      width: 200,
                    ),
                    Container(
                      margin: const EdgeInsets.only(
                        left: 16,
                        top: 8,
                      ),
                      color: Colors.blue,
                      height: 12,
                      width: 170,
                    ),
                  ],
                )
              ],
            ),
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
