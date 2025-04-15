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
      body: const Center(
        child: Text(
          'Tap an icon below to navigate',
          style: TextStyle(fontSize: 18),
        ),
      ),
      bottomNavigationBar: Container(
        color: Colors.lightGreen,
        height: 60,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextButton.icon(
              onPressed: () => navigateWithHero(context, const Home()),
              icon: const Hero(
                tag: 'home-icon',
                child: Icon(Icons.home, color: Colors.white),
              ),
              label: const Text('Home', style: TextStyle(color: Colors.white)),
              style: TextButton.styleFrom(
                padding: EdgeInsets.zero,
                minimumSize: const Size(50, 40),
                tapTargetSize: MaterialTapTargetSize.shrinkWrap,
              ),
            ),
            const SizedBox(width: 40),
            TextButton.icon(
              onPressed: () => navigateWithHero(context, const About()),
              icon: const Hero(
                tag: 'about-icon',
                child: Icon(Icons.info, color: Colors.white),
              ),
              label: const Text('About', style: TextStyle(color: Colors.white)),
              style: TextButton.styleFrom(
                padding: EdgeInsets.zero,
                minimumSize: const Size(50, 40),
                tapTargetSize: MaterialTapTargetSize.shrinkWrap,
              ),
            ),
            const SizedBox(width: 40),
            TextButton.icon(
              onPressed: () => navigateWithHero(context, const Contact()),
              icon: const Hero(
                tag: 'contact-icon',
                child: Icon(Icons.contact_mail, color: Colors.white),
              ),
              label: const Text('Contact', style: TextStyle(color: Colors.white)),
              style: TextButton.styleFrom(
                padding: EdgeInsets.zero,
                minimumSize: const Size(50, 40),
                tapTargetSize: MaterialTapTargetSize.shrinkWrap,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
