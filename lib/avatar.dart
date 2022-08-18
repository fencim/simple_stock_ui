import 'package:flutter/material.dart';

class Avatar extends StatelessWidget {
  final Image avatar;
  final double height;
  const Avatar({Key? key, required this.avatar, required this.height}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      margin: const EdgeInsets.only(right: 10, top: 10),
      alignment: Alignment.topCenter,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(5),
        child: avatar,
      ),
    );
  }
}
