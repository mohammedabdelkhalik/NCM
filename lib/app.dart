import 'package:flutter/material.dart';
import 'package:ncm/bottom_nav_bar_view.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(useMaterial3: true),
      home: const BottomNavBar(),
      debugShowCheckedModeBanner: false,
    );
  }
}
