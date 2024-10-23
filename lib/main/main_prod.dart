import 'package:contacts_app/app.dart';
import 'package:contacts_app/Utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:hive_flutter/adapters.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Hive.initFlutter();
  runApp(MyApp(
    flavour: Constants.flavourProd,
    themeData: Constants.themeProd,
  ));
}
