import 'package:flutter/material.dart';

class DetailsData extends StatelessWidget {
  final String description;
  final double price;

  const DetailsData({super.key, required this.description, required this.price});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 8),
          Text(
            description,
            style: const TextStyle(fontSize: 18, color: Colors.brown),
          ),
          const SizedBox(height: 20),
          Text(
            'Price: \$${price.toStringAsFixed(2)}',
            style: const TextStyle(fontSize: 22, color: Colors.brown),
          ),
        ],
      ),
    );
  }
}
