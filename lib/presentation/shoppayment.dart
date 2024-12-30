import 'package:flutter/material.dart';



class ShopPayment extends StatefulWidget {
  @override
  _ShopPaymentState createState() => _ShopPaymentState();
}

class _ShopPaymentState extends State<ShopPayment> {
  String _selectedPaymentMethod = "Google Pay";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Payment"),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            // Google Pay Option
            RadioListTile<String>(
              title: const Text("Google Pay"),
              value: "Google Pay",
              groupValue: _selectedPaymentMethod,
              onChanged: (value) {
                setState(() {
                  _selectedPaymentMethod = value!;
                });
              },
            ),
            // Cash on Delivery (COD) Option
            RadioListTile<String>(
              title: const Text("Cash on Delivery (COD)"),
              value: "COD",
              groupValue: _selectedPaymentMethod,
              onChanged: (value) {
                setState(() {
                  _selectedPaymentMethod = value!;
                });
              },
            ),
            const SizedBox(height: 32),
            // Confirm Button
            ElevatedButton(
              onPressed: () {
                // Handle payment confirmation logic here
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: Text("Selected Payment Method: $_selectedPaymentMethod"),
                  ),
                );
              },
              style: ElevatedButton.styleFrom(
                minimumSize: const Size(double.infinity, 50),
              ),
              child: const Text("Confirm"),
            ),
          ],
        ),
      ),
    );
  }
}
