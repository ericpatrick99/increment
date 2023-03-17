import 'package:flutter/material.dart';
import 'package:inmind/src/controllers/homecontroller.dart';

import 'homepage.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomeControler(
        child: HomePage(),
      ),
    );
  }
}
