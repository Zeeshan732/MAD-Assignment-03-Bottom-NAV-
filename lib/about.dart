import 'package:flutter/material.dart';

class About extends StatelessWidget {
  const About({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('About Page')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            Hero(
              tag: 'about-icon',
              child: Icon(Icons.info, size: 80, color: Colors.green),
            ),
            SizedBox(height: 20),
            Text('About Us', style: TextStyle(fontSize: 24)),
          ],
        ),
      ),
    );
  }
}
