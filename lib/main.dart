import 'package:flutter/material.dart';
import 'pages/landing_page.dart';
import 'pages/login_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Campus Event App',
      theme: ThemeData(primarySwatch: Colors.teal),
      home: const LandingPage(),
      routes: {
        '/login': (context) => const LoginPage(),
      },
    );
  }
}
