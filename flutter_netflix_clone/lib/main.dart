import 'package:flutter/material.dart';
import 'package:flutter_netflix_clone_app/screens/splash_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Netflix Clone App',
      home: SplashScreen(),
    );
  }
}
