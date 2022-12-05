import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Main Page Demo',
      home: MainPage(),
    );
  }
}

class MainPage extends StatelessWidget {
  final List<String> _products = [
    'Product 1',
    'Product 2',
    'Product 3',
    'Product 4',
    'Product 5',
    'Product 6',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Main Page'),
        actions: [
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {
              // Show the search page when the search icon is pressed
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => SearchPage()),
              );
            },
          ),
        ],
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            DrawerHeader(
              child: Text('Menu'),
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
            ),
            ListTile(
              title: Text('Home'),
              onTap: () {
                // Pop the current route off the stack when the menu item is tapped
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: Text('Categories'),
              onTap: () {
                // Push a new route onto the stack when the menu item is tapped
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => CategoriesPage()),
                );
              },
            ),
            ListTile(
              title: Text('Cart'),
              onTap: () {
                // Push a new route onto the stack when the menu item is tapped
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => CartPage()),
                );
              },
            ),
          ],
        ),
      ),
      body: GridView.builder(
        itemCount: _products.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
        ),
        itemBuilder: (context, index) {
          return Card(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset('assets/${_products[index]}.png'),
                Text(_products[index]),
              ],
            ),
          );
        },
      ),
    );
  }
}

class SearchPage extends StatelessWidget {