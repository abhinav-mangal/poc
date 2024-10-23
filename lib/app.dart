import 'package:contacts_app/cubit/home_cubit.dart';
import 'package:contacts_app/screens/home_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MyApp extends StatelessWidget {
  final String flavour;
  final ThemeData themeData;
  const MyApp({super.key, required this.flavour, required this.themeData});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers:  [
        BlocProvider(create: (context) => HomeCubit()),
      ],
      child: MaterialApp(
        theme: themeData,
        home: MyHomePage(title: 'Flutter $flavour '),
      ),
    );
  }
}
