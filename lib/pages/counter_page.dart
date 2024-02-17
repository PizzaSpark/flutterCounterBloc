import 'package:flutter/material.dart';
import 'package:taptapbloc/components/my_fab.dart';

class CounterPage extends StatefulWidget {
  const CounterPage({super.key});

  @override
  State<CounterPage> createState() => _CounterPageState();
}

class _CounterPageState extends State<CounterPage> {
  final counter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Text("The number is $counter")),
      floatingActionButton: const Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          MyFAB(icon: Icons.plus_one),
          MyFAB(icon: Icons.exposure_minus_1),
        ],
      )
    );
  }
}
