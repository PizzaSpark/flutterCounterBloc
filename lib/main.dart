import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:taptapbloc/bloc/counter_bloc.dart';
import 'package:taptapbloc/pages/counter_page.dart';
import 'package:taptapbloc/pages/plusminus_page.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => CounterCubit(),
      child: MaterialApp.router(
        debugShowCheckedModeBanner: false,
        routerConfig: _router,
      ),
    );
  }
}

final GoRouter _router = GoRouter(
  routes: <RouteBase>[
    GoRoute(
      path: '/',
      builder: (BuildContext context, GoRouterState state) {
        return const CounterPage();
      },
      routes: <RouteBase>[
        GoRoute(
          path: 'plusminus',
          builder: (BuildContext context, GoRouterState state) {
            return const PlusMinusPage();
          },
        ),
      ],
    ),
  ],
);

