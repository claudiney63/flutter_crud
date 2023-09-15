import 'package:amigos_de_fe/components/user_tile.dart';
import 'package:amigos_de_fe/models/user.dart';
import 'package:amigos_de_fe/provider/users.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class UserList extends StatelessWidget {
  const UserList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Users users = Provider.of(context);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Lista de Usuarios'),
        actions: [
          IconButton(
              onPressed: () {},
              icon: const Icon(Icons.add))
        ],
      ),
      body: ListView.builder(
        itemBuilder: (ctx, i) => UserTile(user: users.byIndex(i)),
        itemCount: users.count,
      ),
    );
  }
}
