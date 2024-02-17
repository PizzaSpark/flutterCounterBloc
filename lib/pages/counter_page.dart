import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:taptapbloc/bloc/counter_bloc.dart';
import 'package:taptapbloc/components/my_routerfab.dart';
import 'package:go_router/go_router.dart';

class CounterPage extends StatelessWidget {
  const CounterPage({super.key});

  @override
  Widget build(BuildContext context) {
    final counterCubitInstance = BlocProvider.of<CounterCubit>(context);
    return Scaffold(
      body: Center(child: BlocBuilder<CounterCubit, int>(
        bloc: counterCubitInstance,
        builder: (context, counter) {
          return Text("The number is $counter");
        }
      )),
      floatingActionButton: MyRouterFAB(icon: Icons.navigate_next, onPressed: () => context.go('/plusminus'))
    );
  }
}
