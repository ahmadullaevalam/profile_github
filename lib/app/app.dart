//import 'package:counterapp/pages/profile_page.dart';
import 'package:counterapp/pages/sing_upp_page.dart';
import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'profile.com',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.teal),
        useMaterial3: true,
      ),
     // home:const ProfilePage(),
      home:const SingUppPage(),
      );
  }
}