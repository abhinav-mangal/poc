import 'package:contacts_app/cubit/home_cubit.dart';
import 'package:contacts_app/model/user_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MyHomePage extends StatelessWidget {
  final String title;
  const MyHomePage({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
  context.read<HomeCubit>().dataBase();
    return Scaffold(
        appBar: AppBar(
            // backgroundColor: Theme.of(context).colorScheme.inversePrimary,
            title: Text(title)),
        body: RefreshIndicator.adaptive(
          onRefresh: () => context.read<HomeCubit>().apiCall(),
          child: BlocBuilder<HomeCubit, UsersModel?>(
            builder: (context, state) {
              return state == null
                  ? const Center(child: CircularProgressIndicator())
                  : ListView.builder(
                      itemCount: state.users.length,
                      itemBuilder: (BuildContext context, int index) {
                        return ListTile(
                          leading: Image.network(state.users[index].image),
                          title: Text(state.users[index].firstName),
                          subtitle: Text(state.users[index].lastName),
                          trailing: Text(state.users[index].age.toString()),
                        );
                      },
                    );
            },
          ),
        ));
  }
}
