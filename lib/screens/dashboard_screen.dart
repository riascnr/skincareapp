import 'package:flutter/material.dart';

class DashboardScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              'Welcome to SkinBetter!',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 20),
            Card(
              elevation: 4,
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Your Skin Profile',
                      style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 10),
                    // Add widgets displaying user's skin profile information
                    Text('Skin Type: Normal'),
                    Text('Concerns: Dry Skin, Acne'),
                  ],
                ),
              ),
            ),
            SizedBox(height: 20),
            Card(
              elevation: 4,
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Recommended Products',
                      style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 10),
                    // Add widgets displaying recommended skincare products
                    ListTile(
                      title: Text('Cleanser'),
                      subtitle: Text('Gentle foaming cleanser for all skin types.'),
                      leading: Icon(Icons.face),
                    ),
                    ListTile(
                      title: Text('Moisturizer'),
                      subtitle: Text('Hydrating moisturizer with SPF 30.'),
                      leading: Icon(Icons.opacity),
                    ),
                    // Add more product recommendations as needed
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: DashboardScreen(),
  ));
}
