import 'package:flutter/material.dart';

class Community extends StatelessWidget {
  const Community({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text('Community')),
        body: Column(
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
            Row(
              children: [
                Expanded(
                    child: Card(
                  margin: const EdgeInsets.only(left: 20, right: 20, top: 10),
                  child: Container(
                    margin: const EdgeInsets.only(left: 20, right: 20, top: 10, bottom: 10),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(

                          "How to invest?",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 19),
                        ),
                        const Text(
                          "Lemme tellrelly",
                          
                        )
                      ],
                    ),
                  ),
                ))
              ],
            )
          ],
        ));
  }
}
