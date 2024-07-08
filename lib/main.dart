import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:uas_21421028_tiyaandini/pages/MainPage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        useMaterial3: false,
      ),
      debugShowCheckedModeBanner: false,
      title: "HalloChat",
      routes: {
        MainPage.routeName: (context) => MainPage(),
      },
    );
  }
}
