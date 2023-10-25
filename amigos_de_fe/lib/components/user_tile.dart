import 'package:amigos_de_fe/models/user.dart';
import 'package:amigos_de_fe/provider/users.dart';
import 'package:amigos_de_fe/routes/app_routes.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class UserTile extends StatelessWidget {
  const UserTile({Key? key, required this.user}) : super(key: key);

  final User user;

  @override
  Widget build(BuildContext context) {
    final avatar = user.avatarUrl.isEmpty
        ? const CircleAvatar(child: Icon(Icons.person))
        : CircleAvatar(backgroundImage: NetworkImage(user.avatarUrl));

    return ListTile(
      leading: avatar,
      title: Text(user.name),
      subtitle: Text(user.email),
      trailing: SizedBox(
        width: 100,
        child: Row(
          children: [
            IconButton(
              onPressed: () {
                Navigator.of(context).pushNamed(
                  AppRoutes.USER_FORM,
                  arguments: user,
                );
              },
              icon: const Icon(
                Icons.edit,
              ),
              color: Colors.orange,
            ),
            IconButton(
              onPressed: () {
                showDialog(
                  context: context,
                  builder: (ctx) => AlertDialog(
                    title: const Text('Exlcuir Usuario'),
                    content: const Text('Tem certeza?'),
                    actions: [
                      TextButton(
                          onPressed: () {
                            Navigator.of(context).pop();
                          },
                          child: const Text('Não')),
                      TextButton(
                          onPressed: () {
                            Provider.of<Users>(context, listen: false).remove(user);
                            Navigator.of(context).pop();
                          },
                          child: const Text('Sim')),
                    ],
                  ),
                );
              },
              icon: const Icon(
                Icons.delete,
              ),
              color: Colors.red,
            )
          ],
        ),
      ),
    );
  }
}
