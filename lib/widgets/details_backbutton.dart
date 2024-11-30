import 'package:flutter/material.dart';

class DetailsBackButton extends StatelessWidget {
  const DetailsBackButton({super.key});

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: () => Navigator.pop(context),
      backgroundColor: Colors.brown,
      child: const Icon(Icons.arrow_back, color: Colors.white),
    );
  }
}
