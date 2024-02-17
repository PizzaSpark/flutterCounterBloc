import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:taptapbloc/bloc/counter_bloc.dart';
import 'package:taptapbloc/components/my_blocfab.dart';

class PlusMinusPage extends StatefulWidget {
  const PlusMinusPage({super.key});

  @override
  State<PlusMinusPage> createState() => _PlusMinusPageState();
}

class _PlusMinusPageState extends State<PlusMinusPage> {
  @override
  Widget build(BuildContext context) {
    final counterCubitInstance = BlocProvider.of<CounterCubit>(context);
    return Scaffold(
      floatingActionButton: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            //herotags are needed if multiple fab
            MyBlocFAB(herotag: "asdsad", icon: Icons.plus_one, onPressed: counterCubitInstance.increment),
            MyBlocFAB(herotag: "asasddsad", icon: Icons.exposure_minus_1, onPressed: counterCubitInstance.decrement),
          ],
        ),
    );
  }
}