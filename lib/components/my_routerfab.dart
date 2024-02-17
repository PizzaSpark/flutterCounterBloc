import 'package:flutter/material.dart';

class MyRouterFAB extends StatelessWidget {
  final IconData icon;
  final VoidCallback? onPressed;
  const MyRouterFAB({super.key, required this.icon, this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: FloatingActionButton(
        onPressed: onPressed ?? () {},
        child: Icon(icon),
      ),
    );
  }
}