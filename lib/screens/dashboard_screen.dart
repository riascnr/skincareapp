import 'package:flutter/material.dart';

class SkincareProduct {
  final String name;
  final String description;
  final IconData icon;

  SkincareProduct({required this.name, required this.description, required this.icon});
}

class DashboardScreen extends StatefulWidget {
  @override
  _DashboardScreenState createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  List<String> selectedSkinTypes = ['Normal']; // Default skin type
  List<SkincareProduct> recommendedProducts = [
    SkincareProduct(
      name: 'Cleanser',
      description: 'Gentle foaming cleanser for all skin types.',
      icon: Icons.face,
    ),
    SkincareProduct(
      name: 'Moisturizer',
      description: 'Hydrating moisturizer with SPF 30.',
      icon: Icons.opacity,
    ),
    // Add more product recommendations as needed
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Skincare Recommendations'),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
              child: Text(
                'Skincare App',
                style: TextStyle(color: Colors.white, fontSize: 24),
              ),
            ),
            ListTile(
              title: Text('Home'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: Text('Profile'),
              onTap: () {
                // Add profile navigation logic
                Navigator.pop(context);
              },
            ),
            // Add more sidebar items as needed
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text('Select Skin Types:', style: TextStyle(fontSize: 18)),
            ListView.builder(
              shrinkWrap: true,
              itemCount: ['Normal', 'Oily', 'Dry', 'Combination', 'Sensitive'].length,
              itemBuilder: (context, index) {
                final skinType = ['Normal', 'Oily', 'Dry', 'Combination', 'Sensitive'][index];
                return CheckboxListTile(
                  title: Text(skinType),
                  value: selectedSkinTypes.contains(skinType),
                  onChanged: (bool? value) {
                    setState(() {
                      if (value != null) {
                        if (value) {
                          selectedSkinTypes.add(skinType);
                        } else {
                          selectedSkinTypes.remove(skinType);
                        }
                      }
                    });
                  },
                );
              },
            ),
            SizedBox(height: 20),
            Expanded(
              child: ListView.builder(
                itemCount: recommendedProducts.length,
                itemBuilder: (context, index) {
                  return Card(
                    elevation: 4,
                    child: ListTile(
                      title: Text(recommendedProducts[index].name),
                      subtitle: Text(recommendedProducts[index].description),
                      leading: Icon(recommendedProducts[index].icon),
                    ),
                  );
                },
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
