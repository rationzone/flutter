import 'package:flutter/material.dart';


class Shoporders extends StatelessWidget {
  final List<Map<String, dynamic>> orders = [
    {
      "name": "Product 1",
      "quantity": 2,
      "status": "Processing",
      "image": "https://via.placeholder.com/150"
    },
    {
      "name": "Product 2",
      "quantity": 1,
      "status": "Shipped",
      "image": "https://via.placeholder.com/150"
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Orders"),
        centerTitle: true,
      ),
      body: ListView.builder(
        itemCount: orders.length,
        itemBuilder: (context, index) {
          final order = orders[index];
          return Card(
            margin: const EdgeInsets.all(8.0),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Product Image
                  Image.network(
                    order["image"],
                    height: 80,
                    width: 80,
                    fit: BoxFit.cover,
                  ),
                  const SizedBox(width: 10),
                  // Order Details
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Name: ${order["name"]}",
                          style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                        ),
                        const SizedBox(height: 4),
                        Text("Quantity: ${order["quantity"]}"),
                        const SizedBox(height: 4),
                        Text("Status: ${order["status"]}"),
                      ],
                    ),
                  ),
                  // Cancel Button
                  Column(
                    children: [
                      ElevatedButton(
                        onPressed: () {
                          // Handle cancel button logic here
                          ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(
                              content: Text("Cancelled ${order["name"]}"),
                            ),
                          );
                        },
                        child: const Text("Cancel"),
                        style: ElevatedButton.styleFrom(
                          minimumSize: const Size(80, 40),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
