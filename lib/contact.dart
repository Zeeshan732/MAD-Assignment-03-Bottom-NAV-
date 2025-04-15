import 'package:flutter/material.dart';

class Contact extends StatelessWidget {
  const Contact({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Contact Page')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            Hero(
              tag: 'contact-icon',
              child: Icon(Icons.contact_mail, size: 80, color: Colors.orange),
            ),
            SizedBox(height: 20),
            Text('Contact Us', style: TextStyle(fontSize: 24)),
          ],
        ),
      ),
    );
  }
}
