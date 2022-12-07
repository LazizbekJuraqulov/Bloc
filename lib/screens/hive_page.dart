import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lesson_1/bloc/new_bloc.dart';

class HivePage extends StatefulWidget {
  const HivePage({super.key});

  @override
  State<HivePage> createState() => _HivePageState();
}

class _HivePageState extends State<HivePage> {
  @override
  Widget build(BuildContext context) {
    //final blocboy = context.read<NewBloc>();
    return Scaffold(
        floatingActionButton: Row(
          children: [
            FloatingActionButton(
                onPressed: () {
                  //blocboy.add(IncrementEvent());
                },
                child: Icon(Icons.add)),
            FloatingActionButton(
              onPressed: () {
                //blocboy.add(DecrementEvent());
              },
              child: Icon(Icons.remove),
            )
          ],
        ),
        appBar: AppBar(
          title: Text("Laziz"),
        ),
        body: BlocBuilder<NewBloc, NewState>(
          builder: (context, state) {
            if (state is Counter) {
              return Center(
                child: Text("counter is ${state.couter}"),
              );
            } else {
              return Center(
                child: Text("Xato"),
              );
            }
          },
        ));
  }
}
