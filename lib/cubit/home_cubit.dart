import 'dart:convert';

import 'package:contacts_app/connectivity_api.g.dart';
import 'package:contacts_app/model/user_model.dart';
import 'package:contacts_app/service/service.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive/hive.dart';

class HomeCubit extends Cubit<UsersModel?> {
  HomeCubit() : super(null);

  final userBox = Hive.box<UsersModel>('users');

  apiCall() async {
    var res = await ApiService().get();
    UsersModel users = UsersModel.fromJson(json.decode(res.body));
    await userBox.add(users);
    emit(users);
  }

  void dataBase() async {
    if (await isConnected()) {
      if (userBox.isNotEmpty) {
        final db = userBox.getAt(0);
        if (db != null) {
          emit(db);
        }
      } else {
        apiCall();
      }
    }
  }
}

Future<bool> isConnected() async {
  try {
    final api = ConnectivityApi();
    final result = await api.checkConnectivity();
    return result.isConnected ?? false;
  } catch (e) {
    print('Error checking network connectivity: $e');
    return false;
  }
}
