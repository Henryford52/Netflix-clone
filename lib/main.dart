import 'package:flutter/material.dart';
import 'package:netflix/utilities/bottomNavigation.dart';
import 'package:provider/provider.dart';

import 'Provider/auth.dart';
import 'Screens/dashboard.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (ctx) => Moviefetch(),
        ),
      ],
      child: MaterialApp(
        title: 'Flutter Demo',
        debugShowCheckedModeBanner: false,
        theme: ThemeData.dark(),
        home: const BottomNavigation(),
      ),
    );
  }
}
