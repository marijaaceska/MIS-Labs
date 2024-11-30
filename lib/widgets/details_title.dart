import 'package:flutter/material.dart';

class DetailsTitle extends StatelessWidget {
  final String name;
  final String brand;

  const DetailsTitle({super.key, required this.name, required this.brand});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            name,
            style: const TextStyle(fontSize: 35, fontWeight: FontWeight.bold, color: Colors.brown),
          ),
          const SizedBox(height: 2),
          Text(
            brand,
            style: const TextStyle(fontSize: 20, color: Colors.grey),
          ),
        ],
      ),
    );
  }
}
