import 'package:flutter/material.dart';
import 'home.dart';
import 'about.dart';
import 'contact.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Assignment-3',
      theme: ThemeData(primarySwatch: Colors.green),
      home: const MainScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  void navigateWithHero(BuildContext context, Widget page) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (_) => page),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Main Screen')),
      body: const Center(child: Text('Tap an icon below to navigate')),
      bottomNavigationBar: BottomAppBar(
        color: Colors.lightGreen[300],
        shape: const CircularNotchedRectangle(),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              GestureDetector(
                onTap: () => navigateWithHero(context, const Home()),
                child: const Hero(
                  tag: 'home-icon',
                  child: Icon(Icons.home, size: 30),
                ),
              ),
              GestureDetector(
                onTap: () => navigateWithHero(context, const About()),
                child: const Hero(
                  tag: 'about-icon',
                  child: Icon(Icons.info, size: 30),
                ),
              ),
              GestureDetector(
                onTap: () => navigateWithHero(context, const Contact()),
                child: const Hero(
                  tag: 'contact-icon',
                  child: Icon(Icons.contact_mail, size: 30),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
