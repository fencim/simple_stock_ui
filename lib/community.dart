import 'package:flutter/material.dart';
import 'avatar.dart';

class Community extends StatelessWidget {
  static const String routeName = "/community";
  const Community({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text('Community')),
        body: SingleChildScrollView(
            child: Column(
          children: [
            Container(
              margin: const EdgeInsets.only(left: 20, right: 20, top: 20),
              child: Column(
                children: [
                  TextField(
                    decoration: InputDecoration(
                        fillColor: Colors.blueGrey,
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(16),
                            borderSide: const BorderSide(color: Colors.grey))),
                  ),
                ],
              ),
            ),
            const Post(),
            const Post(),
            const Post(),
            const Post()
          ],
        )));
  }
}

class Post extends StatelessWidget {
  const Post({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
            child: Card(
          margin: const EdgeInsets.only(left: 20, right: 20, top: 10),
          child: Container(
            margin:
                const EdgeInsets.only(left: 20, right: 20, top: 10, bottom: 10),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    const SizedBox(
                      width: 20,
                    ),
                    Column(
                      children: const [
                        Text(
                          "How to Start Investing in uStack?",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 19),
                        ),
                        Text(
                          "Lemme tell you this, world of investing is really\nrealy legit, especially",
                        ),
                      ],
                    )
                  ],
                ),
                Row(
                  children: [
                    const SizedBox(
                      width: 20,
                    ),
                    Avatar(
                        avatar: Image.asset('assets/images/profile.png'),
                        height: 40),
                    Avatar(
                        avatar: Image.asset('assets/images/profile.png'),
                        height: 40),
                    Avatar(
                        avatar: Image.asset('assets/images/profile.png'),
                        height: 40),
                    const SizedBox(
                      width: 20,
                    ),
                    TextButton.icon(
                        onPressed: null,
                        icon: const Icon(Icons.arrow_right),
                        label: const Text("Join Forum"))
                  ],
                )
              ],
            ),
          ),
        ))
      ],
    );
  }
}
