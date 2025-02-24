import 'package:flutter/material.dart';
import 'package:mypf/home_page.dart';
import 'package:mypf/pages/about_me.dart';
import 'package:mypf/pages/contacts.dart';
import 'package:mypf/pages/resume.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/home',
      
      routes: {
        '/home': (context) => HomePage(),
        '/about': (context) => AboutMe(),
        '/resume': (context) => Resume(),
        '/contact': (context) => Contacts(),
      },
      debugShowCheckedModeBanner: false,
      title: 'My Profile',
      theme: ThemeData(
        useMaterial3: true,
      ),
      home: HomePage(),
    );
  }
}
