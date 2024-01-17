import 'package:flutter/material.dart';
import 'package:ncm/login.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(useMaterial3: true),
      home: const LoginView(),
      debugShowCheckedModeBanner: false,
    );
  }
}
