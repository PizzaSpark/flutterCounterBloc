import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:taptapbloc/bloc/counter_bloc.dart';
import 'package:taptapbloc/components/my_fab.dart';

class CounterPage extends StatefulWidget {
  const CounterPage({super.key});

  @override
  State<CounterPage> createState() => _CounterPageState();
}

class _CounterPageState extends State<CounterPage> {
  final counterCubit = CounterCubit();
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: BlocBuilder<CounterCubit, int>(
        bloc: counterCubit,
        builder: (context, counter) {
          return Text("The number is $counter");
        }
      )),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          MyFAB(icon: Icons.plus_one, onPressed: counterCubit.increment),
          MyFAB(icon: Icons.exposure_minus_1, onPressed: counterCubit.decrement),
        ],
      )
    );
  }
}
