import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lesson_1/bloc/new_bloc.dart';

class BottomNav extends StatefulWidget {
  const BottomNav({super.key});

  @override
  State<BottomNav> createState() => _BottomNavState();
}

class _BottomNavState extends State<BottomNav> {
  @override
  Widget build(BuildContext context) {
    final blocboy = context.read<NewBloc>();

    return BlocBuilder<NewBloc, NewState>(builder: (context, state) {
      return Scaffold(
        appBar: AppBar(
          title: Text("Main Page"),
        ),
        bottomNavigationBar: state is Counter
            ? BottomNavigationBar(
                currentIndex: state.couter,
                onTap: ((value) {
                  blocboy.add(IndexEvent(value));
                }),
                items: [
                    BottomNavigationBarItem(
                        icon: Icon(Icons.home), label: "Home"),
                    BottomNavigationBarItem(
                        icon: Icon(Icons.settings), label: "Setting"),
                  ])
            : Text("Not pages"),
      );
    });
  }
}
