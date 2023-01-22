import 'package:flutter/material.dart';

class MyList extends StatefulWidget {
  const MyList({Key? key}) : super(key: key);

  @override
  State<MyList> createState() => _MyListState();
}

class _MyListState extends State<MyList> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        width: 120,
        height: 160,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(6),
            image: DecorationImage(
                image: AssetImage("assets/images/img_16.png"),
                fit: BoxFit.cover)),
        // child: Image(
        //   image: AssetImage("assets/images/img_16.png")),
      ),
    );
  }
}
