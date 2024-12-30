import 'package:flutter/material.dart';

class Supplycohome extends StatelessWidget {
  const Supplycohome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('supplyco Shop'),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {
              // Navigate to Cart
            },
            icon: Icon(Icons.shopping_cart),
          ),
          IconButton(
            onPressed: () {
              // Navigate to Orders
            },
            icon: Icon(Icons.list),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 16,
            mainAxisSpacing: 16,
            childAspectRatio: 3 / 4,
          ),
          itemCount: 4, // Adjust the number of items
          itemBuilder: (context, index) {
            return Card(
              elevation: 4,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Item Name',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 8),
                    Expanded(
                      child: Image.asset(
                        'assets/item_placeholder.png', // Replace with your image path
                        fit: BoxFit.cover,
                      ),
                    ),
                    SizedBox(height: 8),
                    Text('Price: \$10/kg'),
                    Text('Quantity: 5'),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: Supplycohome(),
  ));
}
