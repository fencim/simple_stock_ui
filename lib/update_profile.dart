import 'package:flutter/material.dart';
import 'avatar.dart';

class UpdateProfile extends StatelessWidget {
  static const String routeName = "/profile";
  const UpdateProfile({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Personal Data')),
        body: Column(
      children: [
        Avatar(avatar: Image.asset('assets/images/profile.png'), height: 70),
        Container(
          margin: const EdgeInsets.only(left: 10, right: 10),
          child: Column(
            children: [
              Container(
                alignment: Alignment.topLeft,
                child: const Text(
                  'Your Name',
                  style: TextStyle(fontSize: 16),
                  textWidthBasis: TextWidthBasis.longestLine,
                ),
              ),
              const TextField(
                decoration: InputDecoration(
                    fillColor: Colors.blueGrey,
                    border: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey))),
              ),
              Container(
                alignment: Alignment.topLeft,
                child: const Text(
                  'Date of Birth',
                  style: TextStyle(fontSize: 16),
                  textWidthBasis: TextWidthBasis.longestLine,
                ),
              ),
              const TextField(
                decoration: InputDecoration(
                    fillColor: Colors.blueGrey,
                    border: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey))),
              ),
              Container(
                alignment: Alignment.topLeft,
                child: const Text(
                  'Your Job',
                  style: TextStyle(fontSize: 16),
                  textWidthBasis: TextWidthBasis.longestLine,
                ),
              ),
              const TextField(
                decoration: InputDecoration(
                    fillColor: Colors.blueGrey,
                    border: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey))),
              ),
              Container(
                alignment: Alignment.topLeft,
                child: const Text(
                  'Monthly Income',
                  style: TextStyle(fontSize: 16),
                  textWidthBasis: TextWidthBasis.longestLine,
                ),
              ),
              DropdownButton(
                isExpanded: true,
                value: "\$500 - \$3000/year",
                items: const [
                DropdownMenuItem(value: "\$500 - \$3000/year", child: Text("\$500 - \$3000/year")),
                DropdownMenuItem(value: "\$3000 - \$4000/year", child: Text("\$3000 - \$4000/year")),
              ], onChanged:null),
              Container(
                alignment: Alignment.topLeft,
                child: const Text(
                  'Gender',
                  style: TextStyle(fontSize: 16),
                  textWidthBasis: TextWidthBasis.longestLine,
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Expanded(child: Card(
                    child: Row(
                      children: [
                        Radio(  value: true, groupValue: 'Gender', onChanged: null),
                        Text('Male')
                      ],
                    ),
                  )),
                  Expanded(child: Card(
                    margin: const EdgeInsets.only(top: 10, bottom: 10),
                    child: Row(
                      children: [
                        Radio(  value: false, groupValue: 'Gender', onChanged: null),
                        Text('Female')
                      ],
                    ),
                  ))
                  
                  
                ],
              )
            ],
          ),
        )
      ],
    ));
  }
}
