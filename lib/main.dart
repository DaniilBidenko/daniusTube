import 'package:daniustub/bloc/danius_bloc.dart';
import 'package:daniustub/bloc/danius_event.dart';
import 'package:daniustub/repository/danius_repository.dart';
import 'package:daniustub/screens/homescreen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main () {
  runApp(
    RepositoryProvider(
      create: (_) => Daniusrepository(),
      child: MyApp(),
      )
    );
}

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: BlocProvider(
        create: (context) => DaniusBloc(repository: context.read<Daniusrepository>())..add(DaniusLoad()),
          child: HomeScreen(),
        )
    );
  }
}