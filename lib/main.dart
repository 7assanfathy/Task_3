// main.dart
import 'package:flutter/material.dart';
import 'contact_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Portfolio App',
      home: PortfolioScreen(),
    );
  }
}

class PortfolioScreen extends StatefulWidget {
  @override
  _PortfolioScreenState createState() => _PortfolioScreenState();
}

class _PortfolioScreenState extends State<PortfolioScreen> {
  bool _toggleImage = true;

  void _changeImage() {
    setState(() {
      _toggleImage = !_toggleImage;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Portfolio'),
        backgroundColor: Colors.teal,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            Text(
              'Hey There, I\'m Hassan',
              style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            Text(
              'I design beautifully simple things. And I love what I do.',
              style: TextStyle(fontSize: 16),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 20),
            GestureDetector(
              onTap: _changeImage,
              child: Image.asset(
                _toggleImage
                    ? 'assets/profile1.jpg'
                    : 'assets/profile2.jpg',
                height: 250,
              ),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (_) => ContactScreen()),
                );
              },
              child: Text('Contact Me'),
            )
          ],
        ),
      ),
    );
  }
}
