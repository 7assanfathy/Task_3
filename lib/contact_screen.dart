// contact_screen.dart
import 'package:flutter/material.dart';

class ContactScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('How to Contact Me'),
        backgroundColor: Colors.teal,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ListTile(
              leading: Icon(Icons.email),
              title: Text('hassanfathy2004@email.com'),
            ),
            ListTile(
              leading: Icon(Icons.phone),
              title: Text('+201205707563'),
            ),
            ListTile(
              leading: Icon(Icons.important_devices),
              title: Text('ID: 23537034'),
            ),
            ListTile(
              leading: Icon(Icons.alternate_email),
              title: Text('@hassan_fathy'),
            ),
            SizedBox(height: 20),
            Center(
              child: ElevatedButton.icon(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: Icon(Icons.arrow_back),
                label: Text('Back to Home'),
              ),
            )
          ],
        ),
      ),
    );
  }
}
