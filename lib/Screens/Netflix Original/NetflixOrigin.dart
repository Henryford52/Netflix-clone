import 'package:flutter/material.dart';

class NetflixOriginal extends StatefulWidget {
  const NetflixOriginal({Key? key}) : super(key: key);

  @override
  State<NetflixOriginal> createState() => _NetflixOriginalState();
}

class _NetflixOriginalState extends State<NetflixOriginal> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        width: 120,
        height: 200,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(6),
            image: DecorationImage(
                image: AssetImage("assets/images/img_13.png"),
                fit: BoxFit.cover)),
      ),
    );
  }
}
