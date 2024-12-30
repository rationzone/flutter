import 'package:flutter/material.dart';



class supplycoaddress extends StatelessWidget {
  final TextEditingController addressController = TextEditingController();
  final TextEditingController nameController = TextEditingController();
  final TextEditingController phoneController = TextEditingController();
  final TextEditingController pinCodeController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Address"),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            // Address Field
            TextField(
              controller: addressController,
              decoration: const InputDecoration(
                labelText: "Address",
                border: OutlineInputBorder(),
                prefixIcon: Icon(Icons.location_on),
              ),
            ),
            const SizedBox(height: 16),
            // Name Field
            TextField(
              controller: nameController,
              decoration: const InputDecoration(
                labelText: "Name",
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 16),
            // Phone Number Field
            TextField(
              controller: phoneController,
              decoration: const InputDecoration(
                labelText: "Phone No",
                border: OutlineInputBorder(),
              ),
              keyboardType: TextInputType.phone,
            ),
            const SizedBox(height: 16),
            // Pin Code Field
            TextField(
              controller: pinCodeController,
              decoration: const InputDecoration(
                labelText: "Pin Code",
                border: OutlineInputBorder(),
              ),
              keyboardType: TextInputType.number,
            ),
            const SizedBox(height: 24),
            // Save Button
            ElevatedButton(
              onPressed: () {
                // Handle save logic here
              },
              child: const Text("Save"),
              style: ElevatedButton.styleFrom(
                minimumSize: const Size(double.infinity, 50),
              ),
            ),
            const SizedBox(height: 16),
            // Order Now Button
            ElevatedButton(
              onPressed: () {
                // Handle order logic here
              },
              child: const Text("Order Now"),
              style: ElevatedButton.styleFrom(
                minimumSize: const Size(double.infinity, 50),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
