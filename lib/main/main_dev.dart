import 'package:contacts_app/app.dart';
import 'package:contacts_app/Utils/constants.dart';
import 'package:contacts_app/model/user_model.dart';
import 'package:flutter/material.dart';
import 'package:hive_flutter/adapters.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Hive.initFlutter();
  Hive
    ..registerAdapter<UsersModel>(UsersModelAdapter())
    ..registerAdapter(UserAdapter())
    ..registerAdapter<Hair>(HairAdapter())
    ..registerAdapter<Address>(AddressAdapter())
    ..registerAdapter<Coordinates>(CoordinatesAdapter())
    ..registerAdapter<Country>(CountryAdapter())
    ..registerAdapter<Bank>(BankAdapter())
    ..registerAdapter<Company>(CompanyAdapter())
    ..registerAdapter<Crypto>(CryptoAdapter());

    await Hive.openBox<UsersModel>('users');

  runApp(MyApp(
    flavour: Constants.flavourDev,
    themeData: Constants.themeDev,
  ));
}
