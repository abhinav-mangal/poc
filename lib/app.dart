import 'package:contacts_app/cubit/home_cubit.dart';
import 'package:contacts_app/localizations/app_localizations_delegate.dart';
import 'package:contacts_app/screens/login_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

class MyApp extends StatelessWidget {
  final String flavour;
  final ThemeData themeData;
  const MyApp({super.key, required this.flavour, required this.themeData});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => HomeCubit()),
      ],
      child: MaterialApp(
        theme: themeData,
        // home: MyHomePage(title: 'Flutter $flavour '),
        localizationsDelegates: const [
          AppLocalizationsDelegate(),
          GlobalMaterialLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate,
          GlobalCupertinoLocalizations.delegate
        ],
        supportedLocales: const [Locale("en", "EN"), Locale("es", "ES")],
        home: LoginPage(),
      ),
    );
  }
}
