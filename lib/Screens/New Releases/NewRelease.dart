import 'package:flutter/material.dart';

class NewReleases extends StatefulWidget {
  const NewReleases({Key? key}) : super(key: key);

  @override
  State<NewReleases> createState() => _NewReleasesState();
}

class _NewReleasesState extends State<NewReleases> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        width: 120,
        height: 160,
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/images/img_7.png"),
                fit: BoxFit.cover),
            borderRadius: BorderRadius.circular(10)),
      ),
    );
  }
}
