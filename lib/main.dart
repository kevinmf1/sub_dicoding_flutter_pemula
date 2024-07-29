import 'package:flutter/material.dart';
import 'package:sub_dicoding_flutter_pemula/pages/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Football Player',
      theme: ThemeData(),
      home: const HomePage(),
    );
  }
}
