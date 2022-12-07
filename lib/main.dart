import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lesson_1/bloc/new_bloc.dart';
import 'package:lesson_1/screens/hive_page.dart';
import 'package:lesson_1/screens/navbar.dart';

void main(List<String> args) {
  runApp(MultiBlocProvider(providers: [
    BlocProvider(create: (context) {
      return NewBloc()..add(IndexEvent(0));
    })
  ], child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "New App",
      home: BottomNav(),
    );
  }
}
