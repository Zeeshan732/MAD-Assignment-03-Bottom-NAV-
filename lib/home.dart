import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Home Page')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            Hero(
              tag: 'home-icon',
              child: Icon(Icons.home, size: 80, color: Colors.blue),
            ),
            SizedBox(height: 20),
            Text('Welcome to Home', style: TextStyle(fontSize: 24)),
          ],
        ),
      ),
    );
  }
}
