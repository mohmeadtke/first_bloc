import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:new_bloc/HomePage.dart';
import 'package:new_bloc/bloc/counter_bloc.dart';

void main() {
  runApp(const MainApp());
}
//learing the clean archeatceer
class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => CounterBloc(),
      child: const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage()
    ),
    );
  }
}
