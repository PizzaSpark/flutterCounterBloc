import 'package:flutter/material.dart';

class MyBlocFAB extends StatelessWidget {
  final IconData icon;
  final void Function()? onPressed;
  final String herotag;
  const MyBlocFAB({super.key, required this.icon, this.onPressed, required this.herotag});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: FloatingActionButton(
        heroTag: herotag,
        onPressed: onPressed ?? () {},
        child: Icon(icon),
      ),
    );
  }
}