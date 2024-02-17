import 'package:flutter/material.dart';

class MyFAB extends StatelessWidget {
  final IconData icon;
  const MyFAB({super.key, required this.icon});

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: () {
        
      },
      child: Icon(icon),
    );
  }
}